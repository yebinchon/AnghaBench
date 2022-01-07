
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ftp_conn {scalar_t__ file; int pp; } ;
struct TYPE_6__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_3__ proto; TYPE_2__* data; } ;
struct FTP {scalar_t__ transfer; } ;
struct TYPE_4__ {struct FTP* protop; } ;
struct TYPE_5__ {TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 scalar_t__ FTPTRANSFER_INFO ;
 int FTP_SIZE ;
 int PPSENDF (int *,char*,scalar_t__) ;
 int ftp_state_rest (struct connectdata*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode ftp_state_size(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct FTP *ftp = conn->data->req.protop;
  struct ftp_conn *ftpc = &conn->proto.ftpc;

  if((ftp->transfer == FTPTRANSFER_INFO) && ftpc->file) {



    PPSENDF(&ftpc->pp, "SIZE %s", ftpc->file);

    state(conn, FTP_SIZE);
  }
  else
    result = ftp_state_rest(conn);

  return result;
}
