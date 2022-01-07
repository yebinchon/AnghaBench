
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ftp_conn {int ctl_valid; } ;
struct TYPE_4__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_2__ proto; struct Curl_easy* data; } ;
struct TYPE_3__ {int size; } ;
struct Curl_easy {TYPE_1__ req; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int Curl_pgrsSetDownloadCounter (struct Curl_easy*,int ) ;
 int Curl_pgrsSetDownloadSize (struct Curl_easy*,int) ;
 int Curl_pgrsSetUploadCounter (struct Curl_easy*,int ) ;
 int Curl_pgrsSetUploadSize (struct Curl_easy*,int) ;
 int FALSE ;
 int TRUE ;
 int freedirs (struct ftp_conn*) ;
 scalar_t__ ftp_dophase_done (struct connectdata*,int) ;
 scalar_t__ ftp_perform (struct connectdata*,int*,int*) ;

__attribute__((used)) static
CURLcode ftp_regular_transfer(struct connectdata *conn,
                              bool *dophase_done)
{
  CURLcode result = CURLE_OK;
  bool connected = FALSE;
  struct Curl_easy *data = conn->data;
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  data->req.size = -1;

  Curl_pgrsSetUploadCounter(data, 0);
  Curl_pgrsSetDownloadCounter(data, 0);
  Curl_pgrsSetUploadSize(data, -1);
  Curl_pgrsSetDownloadSize(data, -1);

  ftpc->ctl_valid = TRUE;

  result = ftp_perform(conn,
                       &connected,
                       dophase_done);

  if(!result) {

    if(!*dophase_done)

      return CURLE_OK;

    result = ftp_dophase_done(conn, connected);

    if(result)
      return result;
  }
  else
    freedirs(ftpc);

  return result;
}
