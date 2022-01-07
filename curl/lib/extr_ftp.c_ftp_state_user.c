
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pp; } ;
struct TYPE_8__ {TYPE_2__ ftpc; } ;
struct connectdata {TYPE_5__* data; TYPE_3__ proto; } ;
struct FTP {char* user; } ;
struct TYPE_9__ {int ftp_trying_alternative; } ;
struct TYPE_6__ {struct FTP* protop; } ;
struct TYPE_10__ {TYPE_4__ state; TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int FALSE ;
 int FTP_USER ;
 int PPSENDF (int *,char*,char*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode ftp_state_user(struct connectdata *conn)
{
  CURLcode result;
  struct FTP *ftp = conn->data->req.protop;

  PPSENDF(&conn->proto.ftpc.pp, "USER %s", ftp->user?ftp->user:"");

  state(conn, FTP_USER);
  conn->data->state.ftp_trying_alternative = FALSE;

  return CURLE_OK;
}
