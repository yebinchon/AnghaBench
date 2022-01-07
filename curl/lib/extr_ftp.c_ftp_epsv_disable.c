
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int count1; int pp; } ;
struct TYPE_9__ {TYPE_2__ ftpc; } ;
struct TYPE_10__ {void* ftp_use_epsv; scalar_t__ socksproxy; scalar_t__ tunnel_proxy; scalar_t__ ipv6; } ;
struct connectdata {TYPE_3__ proto; TYPE_5__* data; TYPE_4__ bits; } ;
struct TYPE_7__ {void* errorbuf; } ;
struct TYPE_11__ {TYPE_1__ state; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_WEIRD_SERVER_REPLY ;
 void* FALSE ;
 int FTP_PASV ;
 int PPSENDF (int *,char*,char*) ;
 int failf (TYPE_5__*,char*) ;
 int infof (TYPE_5__*,char*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode ftp_epsv_disable(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;

  if(conn->bits.ipv6 && !(conn->bits.tunnel_proxy || conn->bits.socksproxy)) {

    failf(conn->data, "Failed EPSV attempt, exiting\n");
    return CURLE_WEIRD_SERVER_REPLY;
  }

  infof(conn->data, "Failed EPSV attempt. Disabling EPSV\n");

  conn->bits.ftp_use_epsv = FALSE;
  conn->data->state.errorbuf = FALSE;

  PPSENDF(&conn->proto.ftpc.pp, "%s", "PASV");
  conn->proto.ftpc.count1++;

  state(conn, FTP_PASV);
  return result;
}
