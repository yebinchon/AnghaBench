
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ftp_conn {void* ctl_valid; } ;
struct TYPE_5__ {void* do_more; } ;
struct TYPE_7__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_1__ bits; TYPE_4__* data; TYPE_3__ proto; } ;
struct FTP {scalar_t__ transfer; } ;
struct TYPE_6__ {struct FTP* protop; } ;
struct TYPE_8__ {TYPE_2__ req; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int Curl_setup_transfer (TYPE_4__*,int,int,int ,int) ;
 int FALSE ;
 scalar_t__ FTPTRANSFER_BODY ;
 void* TRUE ;
 int close_secondarysocket (struct connectdata*) ;
 scalar_t__ ftp_do_more (struct connectdata*,int*) ;

__attribute__((used)) static CURLcode ftp_dophase_done(struct connectdata *conn,
                                 bool connected)
{
  struct FTP *ftp = conn->data->req.protop;
  struct ftp_conn *ftpc = &conn->proto.ftpc;

  if(connected) {
    int completed;
    CURLcode result = ftp_do_more(conn, &completed);

    if(result) {
      close_secondarysocket(conn);
      return result;
    }
  }

  if(ftp->transfer != FTPTRANSFER_BODY)

    Curl_setup_transfer(conn->data, -1, -1, FALSE, -1);
  else if(!connected)

    conn->bits.do_more = TRUE;

  ftpc->ctl_valid = TRUE;

  return CURLE_OK;
}
