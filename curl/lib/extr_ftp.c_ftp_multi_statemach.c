
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ftp_conn {scalar_t__ state; int pp; } ;
struct TYPE_2__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef int CURLcode ;


 int Curl_pp_statemach (int *,int,int) ;
 int FALSE ;
 scalar_t__ FTP_STOP ;
 int TRUE ;

__attribute__((used)) static CURLcode ftp_multi_statemach(struct connectdata *conn,
                                    bool *done)
{
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  CURLcode result = Curl_pp_statemach(&ftpc->pp, FALSE, FALSE);




  *done = (ftpc->state == FTP_STOP) ? TRUE : FALSE;

  return result;
}
