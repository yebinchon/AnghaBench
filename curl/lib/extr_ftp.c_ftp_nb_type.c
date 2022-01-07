
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ftp_conn {char transfertype; int pp; } ;
struct TYPE_2__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef int ftpstate ;
typedef int CURLcode ;


 int CURLE_OK ;
 int PPSENDF (int *,char*,char) ;
 int ftp_state_type_resp (struct connectdata*,int,int ) ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode ftp_nb_type(struct connectdata *conn,
                            bool ascii, ftpstate newstate)
{
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  CURLcode result;
  char want = (char)(ascii?'A':'I');

  if(ftpc->transfertype == want) {
    state(conn, newstate);
    return ftp_state_type_resp(conn, 200, newstate);
  }

  PPSENDF(&ftpc->pp, "TYPE %c", want);
  state(conn, newstate);


  ftpc->transfertype = want;
  return CURLE_OK;
}
