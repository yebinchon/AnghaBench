
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef scalar_t__ ftpstate ;
typedef int CURLcode ;


 int CURLE_FTP_COULDNT_SET_TYPE ;
 int CURLE_OK ;
 scalar_t__ FTP_LIST_TYPE ;
 scalar_t__ FTP_RETR_TYPE ;
 scalar_t__ FTP_STOR_TYPE ;
 scalar_t__ FTP_TYPE ;
 int failf (struct Curl_easy*,char*) ;
 int ftp_state_list (struct connectdata*) ;
 int ftp_state_retr_prequote (struct connectdata*) ;
 int ftp_state_size (struct connectdata*) ;
 int ftp_state_stor_prequote (struct connectdata*) ;
 int infof (struct Curl_easy*,char*,int) ;

__attribute__((used)) static CURLcode ftp_state_type_resp(struct connectdata *conn,
                                    int ftpcode,
                                    ftpstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;

  if(ftpcode/100 != 2) {



    failf(data, "Couldn't set desired mode");
    return CURLE_FTP_COULDNT_SET_TYPE;
  }
  if(ftpcode != 200)
    infof(data, "Got a %03d response code instead of the assumed 200\n",
          ftpcode);

  if(instate == FTP_TYPE)
    result = ftp_state_size(conn);
  else if(instate == FTP_LIST_TYPE)
    result = ftp_state_list(conn);
  else if(instate == FTP_RETR_TYPE)
    result = ftp_state_retr_prequote(conn);
  else if(instate == FTP_STOR_TYPE)
    result = ftp_state_stor_prequote(conn);

  return result;
}
