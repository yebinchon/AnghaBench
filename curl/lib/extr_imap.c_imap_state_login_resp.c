
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef int imapstate ;
typedef int CURLcode ;


 int CURLE_LOGIN_DENIED ;
 int CURLE_OK ;
 int IMAP_RESP_OK ;
 int IMAP_STOP ;
 int failf (struct Curl_easy*,char*,int) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode imap_state_login_resp(struct connectdata *conn,
                                      int imapcode,
                                      imapstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;

  (void)instate;

  if(imapcode != IMAP_RESP_OK) {
    failf(data, "Access denied. %c", imapcode);
    result = CURLE_LOGIN_DENIED;
  }
  else

    state(conn, IMAP_STOP);

  return result;
}
