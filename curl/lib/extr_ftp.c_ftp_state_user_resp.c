
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ftp_conn {scalar_t__ state; int pp; } ;
struct TYPE_6__ {struct ftp_conn ftpc; } ;
struct connectdata {struct Curl_easy* data; TYPE_2__ proto; } ;
struct FTP {char* passwd; } ;
struct TYPE_8__ {scalar_t__ ftp_trying_alternative; } ;
struct TYPE_7__ {char** str; } ;
struct TYPE_5__ {struct FTP* protop; } ;
struct Curl_easy {TYPE_4__ state; TYPE_3__ set; TYPE_1__ req; } ;
typedef int ftpstate ;
typedef int CURLcode ;


 int CURLE_LOGIN_DENIED ;
 int CURLE_OK ;
 scalar_t__ FTP_ACCT ;
 scalar_t__ FTP_PASS ;
 scalar_t__ FTP_USER ;
 int PPSENDF (int *,char*,char*) ;
 size_t STRING_FTP_ACCOUNT ;
 size_t STRING_FTP_ALTERNATIVE_TO_USER ;
 scalar_t__ TRUE ;
 int failf (struct Curl_easy*,char*,...) ;
 int ftp_state_loggedin (struct connectdata*) ;
 int state (struct connectdata*,scalar_t__) ;

__attribute__((used)) static CURLcode ftp_state_user_resp(struct connectdata *conn,
                                    int ftpcode,
                                    ftpstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct FTP *ftp = data->req.protop;
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  (void)instate;


  if((ftpcode == 331) && (ftpc->state == FTP_USER)) {


    PPSENDF(&ftpc->pp, "PASS %s", ftp->passwd?ftp->passwd:"");
    state(conn, FTP_PASS);
  }
  else if(ftpcode/100 == 2) {


    result = ftp_state_loggedin(conn);
  }
  else if(ftpcode == 332) {
    if(data->set.str[STRING_FTP_ACCOUNT]) {
      PPSENDF(&ftpc->pp, "ACCT %s", data->set.str[STRING_FTP_ACCOUNT]);
      state(conn, FTP_ACCT);
    }
    else {
      failf(data, "ACCT requested but none available");
      result = CURLE_LOGIN_DENIED;
    }
  }
  else {





    if(conn->data->set.str[STRING_FTP_ALTERNATIVE_TO_USER] &&
        !conn->data->state.ftp_trying_alternative) {

      PPSENDF(&conn->proto.ftpc.pp, "%s",
              conn->data->set.str[STRING_FTP_ALTERNATIVE_TO_USER]);
      conn->data->state.ftp_trying_alternative = TRUE;
      state(conn, FTP_USER);
      result = CURLE_OK;
    }
    else {
      failf(data, "Access denied: %03d", ftpcode);
      result = CURLE_LOGIN_DENIED;
    }
  }
  return result;
}
