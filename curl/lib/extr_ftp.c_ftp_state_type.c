
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ftp_conn {scalar_t__ file; } ;
struct TYPE_4__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_1__ proto; struct Curl_easy* data; } ;
struct FTP {int transfer; } ;
struct TYPE_5__ {int prefer_ascii; scalar_t__ opt_no_body; } ;
struct TYPE_6__ {struct FTP* protop; } ;
struct Curl_easy {TYPE_2__ set; TYPE_3__ req; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int FTPTRANSFER_INFO ;
 int FTP_TYPE ;
 scalar_t__ ftp_nb_type (struct connectdata*,int ,int ) ;
 scalar_t__ ftp_need_type (struct connectdata*,int ) ;
 scalar_t__ ftp_state_size (struct connectdata*) ;

__attribute__((used)) static CURLcode ftp_state_type(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct FTP *ftp = conn->data->req.protop;
  struct Curl_easy *data = conn->data;
  struct ftp_conn *ftpc = &conn->proto.ftpc;




  if(data->set.opt_no_body && ftpc->file &&
     ftp_need_type(conn, data->set.prefer_ascii)) {




    ftp->transfer = FTPTRANSFER_INFO;




    result = ftp_nb_type(conn, data->set.prefer_ascii, FTP_TYPE);
    if(result)
      return result;
  }
  else
    result = ftp_state_size(conn);

  return result;
}
