
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef int CURLcode ;


 int CURLE_FTP_WEIRD_PASS_REPLY ;
 int CURLE_OK ;
 int failf (struct Curl_easy*,char*,int) ;
 int ftp_state_loggedin (struct connectdata*) ;

__attribute__((used)) static CURLcode ftp_state_acct_resp(struct connectdata *conn,
                                    int ftpcode)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  if(ftpcode != 230) {
    failf(data, "ACCT rejected by server: %03d", ftpcode);
    result = CURLE_FTP_WEIRD_PASS_REPLY;
  }
  else
    result = ftp_state_loggedin(conn);

  return result;
}
