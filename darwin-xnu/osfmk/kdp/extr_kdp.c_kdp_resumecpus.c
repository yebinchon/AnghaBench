
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int cpu_mask; } ;
typedef TYPE_2__ kdp_resumecpus_req_t ;
struct TYPE_7__ {int is_reply; int len; } ;
struct TYPE_9__ {TYPE_1__ hdr; } ;
typedef TYPE_3__ kdp_resumecpus_reply_t ;
struct TYPE_10__ {TYPE_3__ resumecpus_reply; TYPE_2__ resumecpus_req; } ;
typedef TYPE_4__ kdp_pkt_t ;
typedef int boolean_t ;
struct TYPE_11__ {unsigned short reply_port; int is_halted; } ;


 int FALSE ;
 int TRUE ;
 int dprintf (char*) ;
 TYPE_6__ kdp ;

__attribute__((used)) static boolean_t
kdp_resumecpus(
    kdp_pkt_t *pkt,
    int *len,
    unsigned short *reply_port
)
{
    kdp_resumecpus_req_t *rq = &pkt->resumecpus_req;
    size_t plen = *len;
    kdp_resumecpus_reply_t *rp = &pkt->resumecpus_reply;

    if (plen < sizeof (*rq))
 return (FALSE);

    rp->hdr.is_reply = 1;
    rp->hdr.len = sizeof (*rp);

    dprintf(("kdp_resumecpus %x\n", rq->cpu_mask));

    kdp.is_halted = FALSE;

    *reply_port = kdp.reply_port;
    *len = rp->hdr.len;

    return (TRUE);
}
