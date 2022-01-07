
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smtp_conn {int sasl; int auth_supported; } ;
struct TYPE_2__ {struct smtp_conn smtpc; } ;
struct connectdata {int data; TYPE_1__ proto; } ;
typedef scalar_t__ saslprogress ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_LOGIN_DENIED ;
 scalar_t__ CURLE_OK ;
 int Curl_sasl_can_authenticate (int *,struct connectdata*) ;
 scalar_t__ Curl_sasl_start (int *,struct connectdata*,int ,scalar_t__*) ;
 int FALSE ;
 scalar_t__ SASL_INPROGRESS ;
 int SMTP_AUTH ;
 int SMTP_STOP ;
 int infof (int ,char*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode smtp_perform_authentication(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct smtp_conn *smtpc = &conn->proto.smtpc;
  saslprogress progress;



  if(!smtpc->auth_supported ||
     !Curl_sasl_can_authenticate(&smtpc->sasl, conn)) {
    state(conn, SMTP_STOP);
    return result;
  }


  result = Curl_sasl_start(&smtpc->sasl, conn, FALSE, &progress);

  if(!result) {
    if(progress == SASL_INPROGRESS)
      state(conn, SMTP_AUTH);
    else {

      infof(conn->data, "No known authentication mechanisms supported!\n");
      result = CURLE_LOGIN_DENIED;
    }
  }

  return result;
}
