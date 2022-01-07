
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ftp_conn {int count1; } ;
struct TYPE_3__ {int ftp_use_eprt; } ;
struct TYPE_4__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_1__ bits; TYPE_2__ proto; struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef scalar_t__ ftpport ;
typedef int CURLcode ;


 int CURLE_FTP_PORT_FAILED ;
 int CURLE_OK ;
 scalar_t__ DONE ;
 scalar_t__ EPRT ;
 int FALSE ;
 int FTP_STOP ;
 int failf (struct Curl_easy*,char*) ;
 int ftp_dophase_done (struct connectdata*,int ) ;
 int ftp_state_use_port (struct connectdata*,scalar_t__) ;
 int infof (struct Curl_easy*,char*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode ftp_state_port_resp(struct connectdata *conn,
                                    int ftpcode)
{
  struct Curl_easy *data = conn->data;
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  ftpport fcmd = (ftpport)ftpc->count1;
  CURLcode result = CURLE_OK;



  if(ftpcode / 100 != 2) {


    if(EPRT == fcmd) {
      infof(data, "disabling EPRT usage\n");
      conn->bits.ftp_use_eprt = FALSE;
    }
    fcmd++;

    if(fcmd == DONE) {
      failf(data, "Failed to do PORT");
      result = CURLE_FTP_PORT_FAILED;
    }
    else

      result = ftp_state_use_port(conn, fcmd);
  }
  else {
    infof(data, "Connect data stream actively\n");
    state(conn, FTP_STOP);
    result = ftp_dophase_done(conn, FALSE);
  }

  return result;
}
