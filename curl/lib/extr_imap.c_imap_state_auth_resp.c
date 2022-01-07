
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imap_conn {int preftype; int login_disabled; int sasl; } ;
struct TYPE_2__ {struct imap_conn imapc; } ;
struct connectdata {TYPE_1__ proto; struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef int saslprogress ;
typedef int imapstate ;
typedef int CURLcode ;


 int CURLE_LOGIN_DENIED ;
 int CURLE_OK ;
 int Curl_sasl_continue (int *,struct connectdata*,int,int*) ;
 int IMAP_STOP ;
 int IMAP_TYPE_CLEARTEXT ;


 int failf (struct Curl_easy*,char*) ;
 int imap_perform_login (struct connectdata*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode imap_state_auth_resp(struct connectdata *conn,
                                     int imapcode,
                                     imapstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct imap_conn *imapc = &conn->proto.imapc;
  saslprogress progress;

  (void)instate;

  result = Curl_sasl_continue(&imapc->sasl, conn, imapcode, &progress);
  if(!result)
    switch(progress) {
    case 129:
      state(conn, IMAP_STOP);
      break;
    case 128:
      if((!imapc->login_disabled) && (imapc->preftype & IMAP_TYPE_CLEARTEXT))

        result = imap_perform_login(conn);
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
