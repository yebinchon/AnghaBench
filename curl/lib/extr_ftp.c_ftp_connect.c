
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pingpong {struct connectdata* conn; int endofresp; int statemach_act; int response_time; } ;
struct ftp_conn {struct pingpong pp; } ;
struct TYPE_4__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_1__* handler; TYPE_2__ proto; } ;
struct TYPE_3__ {int flags; } ;
typedef scalar_t__ CURLcode ;


 int Curl_pp_init (struct pingpong*) ;
 scalar_t__ Curl_ssl_connect (struct connectdata*,int ) ;
 int FALSE ;
 int FIRSTSOCKET ;
 int FTP_WAIT220 ;
 int PROTOPT_SSL ;
 int RESP_TIMEOUT ;
 int connkeep (struct connectdata*,char*) ;
 int ftp_endofresp ;
 scalar_t__ ftp_multi_statemach (struct connectdata*,int*) ;
 int ftp_statemach_act ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode ftp_connect(struct connectdata *conn,
                                 bool *done)
{
  CURLcode result;
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  struct pingpong *pp = &ftpc->pp;

  *done = FALSE;


  connkeep(conn, "FTP default");

  pp->response_time = RESP_TIMEOUT;
  pp->statemach_act = ftp_statemach_act;
  pp->endofresp = ftp_endofresp;
  pp->conn = conn;

  if(conn->handler->flags & PROTOPT_SSL) {

    result = Curl_ssl_connect(conn, FIRSTSOCKET);
    if(result)
      return result;
  }

  Curl_pp_init(pp);



  state(conn, FTP_WAIT220);

  result = ftp_multi_statemach(conn, done);

  return result;
}
