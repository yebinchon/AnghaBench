
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pp; } ;
struct TYPE_4__ {TYPE_1__ ftpc; } ;
struct connectdata {TYPE_2__ proto; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int FTP_PWD ;
 int PPSENDF (int *,char*,char*) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode ftp_state_pwd(struct connectdata *conn)
{
  CURLcode result;


  PPSENDF(&conn->proto.ftpc.pp, "%s", "PWD");
  state(conn, FTP_PWD);

  return CURLE_OK;
}
