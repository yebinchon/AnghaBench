
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smtp_conn {int sasl; } ;
struct TYPE_2__ {struct smtp_conn smtpc; } ;
struct connectdata {TYPE_1__ proto; struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef int smtpstate ;
typedef int saslprogress ;
typedef int CURLcode ;


 int CURLE_LOGIN_DENIED ;
 int CURLE_OK ;
 int Curl_sasl_continue (int *,struct connectdata*,int,int*) ;


 int SMTP_STOP ;
 int failf (struct Curl_easy*,char*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode smtp_state_auth_resp(struct connectdata *conn,
                                     int smtpcode,
                                     smtpstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct smtp_conn *smtpc = &conn->proto.smtpc;
  saslprogress progress;

  (void)instate;

  result = Curl_sasl_continue(&smtpc->sasl, conn, smtpcode, &progress);
  if(!result)
    switch(progress) {
    case 129:
      state(conn, SMTP_STOP);
      break;
    case 128:
      failf(data, "Authentication cancelled");
      result = CURLE_LOGIN_DENIED;
      break;
    default:
      break;
    }

  return result;
}
