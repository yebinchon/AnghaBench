
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int* tcpconnect; } ;
struct connectdata {TYPE_4__* data; TYPE_3__ bits; } ;
struct FTP {int transfer; } ;
struct TYPE_6__ {struct FTP* protop; } ;
struct TYPE_5__ {scalar_t__ opt_no_body; } ;
struct TYPE_8__ {TYPE_2__ req; TYPE_1__ set; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int DEBUGF (int ) ;
 int FALSE ;
 int FTPTRANSFER_INFO ;
 int FTP_QUOTE ;
 size_t SECONDARYSOCKET ;
 int TRUE ;
 scalar_t__ ftp_multi_statemach (struct connectdata*,int*) ;
 scalar_t__ ftp_state_quote (struct connectdata*,int ,int ) ;
 int infof (TYPE_4__*,char*,...) ;

__attribute__((used)) static
CURLcode ftp_perform(struct connectdata *conn,
                     bool *connected,
                     bool *dophase_done)
{

  CURLcode result = CURLE_OK;

  DEBUGF(infof(conn->data, "DO phase starts\n"));

  if(conn->data->set.opt_no_body) {

    struct FTP *ftp = conn->data->req.protop;
    ftp->transfer = FTPTRANSFER_INFO;
  }

  *dophase_done = FALSE;


  result = ftp_state_quote(conn, TRUE, FTP_QUOTE);
  if(result)
    return result;


  result = ftp_multi_statemach(conn, dophase_done);

  *connected = conn->bits.tcpconnect[SECONDARYSOCKET];

  infof(conn->data, "ftp_perform ends with SECONDARY: %d\n", *connected);

  if(*dophase_done)
    DEBUGF(infof(conn->data, "DO phase is complete1\n"));

  return result;
}
