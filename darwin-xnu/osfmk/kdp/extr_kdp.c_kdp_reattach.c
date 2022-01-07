
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned short req_reply_port; } ;
typedef TYPE_1__ kdp_reattach_req_t ;
struct TYPE_7__ {TYPE_1__ reattach_req; } ;
typedef TYPE_2__ kdp_pkt_t ;
typedef int boolean_t ;
struct TYPE_8__ {int is_conn; } ;


 int TRUE ;
 TYPE_5__ kdp ;
 int kdp_disconnect (TYPE_2__*,int*,unsigned short*) ;
 int reattach_wait ;

__attribute__((used)) static boolean_t
kdp_reattach(
    kdp_pkt_t *pkt,
    int *len,
    unsigned short *reply_port
)
{
    kdp_reattach_req_t *rq = &pkt->reattach_req;

    kdp.is_conn = TRUE;
    kdp_disconnect(pkt, len, reply_port);
    *reply_port = rq->req_reply_port;
    reattach_wait = 1;
    return (TRUE);
}
