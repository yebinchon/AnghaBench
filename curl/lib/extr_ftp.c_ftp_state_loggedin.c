
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pp; } ;
struct TYPE_6__ {TYPE_2__ ftpc; } ;
struct connectdata {TYPE_3__ proto; TYPE_1__* ssl; } ;
struct TYPE_4__ {scalar_t__ use; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 size_t FIRSTSOCKET ;
 int FTP_PBSZ ;
 int PPSENDF (int *,char*,int ) ;
 int ftp_state_pwd (struct connectdata*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode ftp_state_loggedin(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;

  if(conn->ssl[FIRSTSOCKET].use) {
    PPSENDF(&conn->proto.ftpc.pp, "PBSZ %d", 0);
    state(conn, FTP_PBSZ);
  }
  else {
    result = ftp_state_pwd(conn);
  }
  return result;
}
