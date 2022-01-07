
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ftp_conn {int wait_data_conn; int state_saved; } ;
struct TYPE_4__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_2__ proto; struct Curl_easy* data; } ;
struct TYPE_3__ {scalar_t__ ftp_use_port; } ;
struct Curl_easy {TYPE_1__ set; } ;
typedef int ftpstate ;
typedef int CURLcode ;


 int AllowServerConnect (struct connectdata*,int*) ;
 int CURLE_OK ;
 int CURLE_UPLOAD_FAILED ;
 int FTP_STOP ;
 int InitiateTransfer (struct connectdata*) ;
 int TRUE ;
 int failf (struct Curl_easy*,char*,int) ;
 int infof (struct Curl_easy*,char*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode ftp_state_stor_resp(struct connectdata *conn,
                                    int ftpcode, ftpstate instate)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;

  if(ftpcode >= 400) {
    failf(data, "Failed FTP upload: %0d", ftpcode);
    state(conn, FTP_STOP);

    return CURLE_UPLOAD_FAILED;
  }

  conn->proto.ftpc.state_saved = instate;


  if(data->set.ftp_use_port) {
    bool connected;

    state(conn, FTP_STOP);

    result = AllowServerConnect(conn, &connected);
    if(result)
      return result;

    if(!connected) {
      struct ftp_conn *ftpc = &conn->proto.ftpc;
      infof(data, "Data conn was not available immediately\n");
      ftpc->wait_data_conn = TRUE;
    }

    return CURLE_OK;
  }
  return InitiateTransfer(conn);
}
