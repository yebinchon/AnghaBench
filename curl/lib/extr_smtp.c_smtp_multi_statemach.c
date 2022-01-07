
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smtp_conn {scalar_t__ state; int pp; int ssldone; } ;
struct TYPE_3__ {struct smtp_conn smtpc; } ;
struct connectdata {TYPE_2__* handler; TYPE_1__ proto; } ;
struct TYPE_4__ {int flags; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ Curl_pp_statemach (int *,int,int) ;
 scalar_t__ Curl_ssl_connect_nonblocking (struct connectdata*,int ,int *) ;
 int FALSE ;
 int FIRSTSOCKET ;
 int PROTOPT_SSL ;
 scalar_t__ SMTP_STOP ;
 int TRUE ;

__attribute__((used)) static CURLcode smtp_multi_statemach(struct connectdata *conn, bool *done)
{
  CURLcode result = CURLE_OK;
  struct smtp_conn *smtpc = &conn->proto.smtpc;

  if((conn->handler->flags & PROTOPT_SSL) && !smtpc->ssldone) {
    result = Curl_ssl_connect_nonblocking(conn, FIRSTSOCKET, &smtpc->ssldone);
    if(result || !smtpc->ssldone)
      return result;
  }

  result = Curl_pp_statemach(&smtpc->pp, FALSE, FALSE);
  *done = (smtpc->state == SMTP_STOP) ? TRUE : FALSE;

  return result;
}
