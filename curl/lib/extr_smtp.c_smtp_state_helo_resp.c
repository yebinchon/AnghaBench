
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef int smtpstate ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_REMOTE_ACCESS_DENIED ;
 int SMTP_STOP ;
 int failf (struct Curl_easy*,char*,int) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode smtp_state_helo_resp(struct connectdata *conn, int smtpcode,
                                     smtpstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;

  (void)instate;

  if(smtpcode/100 != 2) {
    failf(data, "Remote access denied: %d", smtpcode);
    result = CURLE_REMOTE_ACCESS_DENIED;
  }
  else

    state(conn, SMTP_STOP);

  return result;
}
