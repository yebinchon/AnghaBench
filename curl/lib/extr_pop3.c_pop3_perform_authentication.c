
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pop3_conn {int authtypes; int preftype; int sasl; } ;
struct TYPE_2__ {struct pop3_conn pop3c; } ;
struct connectdata {int data; TYPE_1__ proto; } ;
typedef scalar_t__ saslprogress ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_LOGIN_DENIED ;
 scalar_t__ CURLE_OK ;
 int Curl_sasl_can_authenticate (int *,struct connectdata*) ;
 scalar_t__ Curl_sasl_start (int *,struct connectdata*,int ,scalar_t__*) ;
 int FALSE ;
 int POP3_AUTH ;
 int POP3_STOP ;
 int POP3_TYPE_APOP ;
 int POP3_TYPE_CLEARTEXT ;
 int POP3_TYPE_SASL ;
 scalar_t__ SASL_IDLE ;
 scalar_t__ SASL_INPROGRESS ;
 int infof (int ,char*) ;
 scalar_t__ pop3_perform_apop (struct connectdata*) ;
 scalar_t__ pop3_perform_user (struct connectdata*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode pop3_perform_authentication(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct pop3_conn *pop3c = &conn->proto.pop3c;
  saslprogress progress = SASL_IDLE;



  if(!Curl_sasl_can_authenticate(&pop3c->sasl, conn)) {
    state(conn, POP3_STOP);
    return result;
  }

  if(pop3c->authtypes & pop3c->preftype & POP3_TYPE_SASL) {

    result = Curl_sasl_start(&pop3c->sasl, conn, FALSE, &progress);

    if(!result)
      if(progress == SASL_INPROGRESS)
        state(conn, POP3_AUTH);
  }

  if(!result && progress == SASL_IDLE) {

    if(pop3c->authtypes & pop3c->preftype & POP3_TYPE_APOP)

      result = pop3_perform_apop(conn);
    else

    if(pop3c->authtypes & pop3c->preftype & POP3_TYPE_CLEARTEXT)

      result = pop3_perform_user(conn);
    else {

      infof(conn->data, "No known authentication mechanisms supported!\n");
      result = CURLE_LOGIN_DENIED;
    }
  }

  return result;
}
