
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ftp_conn {int pp; scalar_t__ file; } ;
struct TYPE_6__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_3__ proto; TYPE_2__* data; } ;
struct FTP {scalar_t__ transfer; } ;
struct TYPE_4__ {struct FTP* protop; } ;
struct TYPE_5__ {TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 scalar_t__ FTPTRANSFER_BODY ;
 int FTP_REST ;
 int PPSENDF (int *,char*,int ) ;
 int ftp_state_prepare_transfer (struct connectdata*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode ftp_state_rest(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct FTP *ftp = conn->data->req.protop;
  struct ftp_conn *ftpc = &conn->proto.ftpc;

  if((ftp->transfer != FTPTRANSFER_BODY) && ftpc->file) {




    PPSENDF(&conn->proto.ftpc.pp, "REST %d", 0);

    state(conn, FTP_REST);
  }
  else
    result = ftp_state_prepare_transfer(conn);

  return result;
}
