
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned int len; } ;
struct TYPE_10__ {int data; int flavor; int cpu; TYPE_1__ hdr; } ;
typedef TYPE_3__ kdp_writeregs_req_t ;
struct TYPE_9__ {int is_reply; int len; } ;
struct TYPE_11__ {TYPE_2__ hdr; int error; } ;
typedef TYPE_4__ kdp_writeregs_reply_t ;
struct TYPE_12__ {TYPE_4__ writeregs_reply; TYPE_3__ writeregs_req; } ;
typedef TYPE_5__ kdp_pkt_t ;
typedef int kdp_hdr_t ;
typedef int boolean_t ;
struct TYPE_13__ {unsigned short reply_port; } ;


 int FALSE ;
 int TRUE ;
 TYPE_7__ kdp ;
 int kdp_machine_write_regs (int ,int ,int ,int*) ;

__attribute__((used)) static boolean_t
kdp_writeregs(
    kdp_pkt_t *pkt,
    int *len,
    unsigned short *reply_port
)
{
    kdp_writeregs_req_t *rq = &pkt->writeregs_req;
    size_t plen = *len;
    int size;
    kdp_writeregs_reply_t *rp = &pkt->writeregs_reply;

    if (plen < sizeof (*rq))
 return (FALSE);

    size = rq->hdr.len - (unsigned)sizeof(kdp_hdr_t) - (unsigned)sizeof(unsigned int);
    rp->error = kdp_machine_write_regs(rq->cpu, rq->flavor, rq->data, &size);

    rp->hdr.is_reply = 1;
    rp->hdr.len = sizeof (*rp);

    *reply_port = kdp.reply_port;
    *len = rp->hdr.len;

    return (TRUE);
}
