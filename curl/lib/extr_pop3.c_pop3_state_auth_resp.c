
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pop3_conn {int authtypes; int preftype; int sasl; } ;
struct TYPE_2__ {struct pop3_conn pop3c; } ;
struct connectdata {TYPE_1__ proto; struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef int saslprogress ;
typedef int pop3state ;
typedef int CURLcode ;


 int CURLE_LOGIN_DENIED ;
 int CURLE_OK ;
 int Curl_sasl_continue (int *,struct connectdata*,int,int*) ;
 int POP3_STOP ;
 int POP3_TYPE_APOP ;
 int POP3_TYPE_CLEARTEXT ;


 int failf (struct Curl_easy*,char*) ;
 int pop3_perform_apop (struct connectdata*) ;
 int pop3_perform_user (struct connectdata*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode pop3_state_auth_resp(struct connectdata *conn,
                                     int pop3code,
                                     pop3state instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct pop3_conn *pop3c = &conn->proto.pop3c;
  saslprogress progress;

  (void)instate;

  result = Curl_sasl_continue(&pop3c->sasl, conn, pop3code, &progress);
  if(!result)
    switch(progress) {
    case 129:
      state(conn, POP3_STOP);
      break;
    case 128:

      if(pop3c->authtypes & pop3c->preftype & POP3_TYPE_APOP)

        result = pop3_perform_apop(conn);
      else

      if(pop3c->authtypes & pop3c->preftype & POP3_TYPE_CLEARTEXT)

        result = pop3_perform_user(conn);
      else {
        failf(data, "Authentication cancelled");
        result = CURLE_LOGIN_DENIED;
      }
      break;
    default:
      break;
    }

  return result;
}
