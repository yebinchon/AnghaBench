
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pingpong {int response; int pending_resp; int linestart_resp; scalar_t__ nread_resp; struct connectdata* conn; } ;
struct connectdata {TYPE_2__* data; } ;
struct TYPE_3__ {int buffer; } ;
struct TYPE_4__ {TYPE_1__ state; } ;


 int Curl_now () ;
 int TRUE ;

void Curl_pp_init(struct pingpong *pp)
{
  struct connectdata *conn = pp->conn;
  pp->nread_resp = 0;
  pp->linestart_resp = conn->data->state.buffer;
  pp->pending_resp = TRUE;
  pp->response = Curl_now();
}
