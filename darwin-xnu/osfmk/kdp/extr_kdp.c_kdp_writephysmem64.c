
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mach_vm_size_t ;
struct TYPE_9__ {unsigned int nbytes; int lcpu; int data; int address; } ;
typedef TYPE_2__ kdp_writephysmem64_req_t ;
struct TYPE_8__ {int is_reply; int len; } ;
struct TYPE_10__ {TYPE_1__ hdr; int error; } ;
typedef TYPE_3__ kdp_writephysmem64_reply_t ;
struct TYPE_11__ {TYPE_3__ writephysmem64_reply; TYPE_2__ writephysmem64_req; } ;
typedef TYPE_4__ kdp_pkt_t ;
typedef int boolean_t ;
struct TYPE_12__ {unsigned short reply_port; } ;


 int FALSE ;
 int KDPERR_ACCESS (unsigned int,int ) ;
 int KDPERR_BAD_NBYTES ;
 unsigned int MAX_KDP_DATA_SIZE ;
 int TRUE ;
 int dprintf (char*) ;
 TYPE_7__ kdp ;
 int kdp_machine_phys_write (TYPE_2__*,int ,int ) ;

__attribute__((used)) static boolean_t
kdp_writephysmem64(
    kdp_pkt_t *pkt,
    int *len,
    unsigned short *reply_port
)
{
    kdp_writephysmem64_req_t *rq = &pkt->writephysmem64_req;
    size_t plen = *len;
    kdp_writephysmem64_reply_t *rp = &pkt->writephysmem64_reply;
    mach_vm_size_t cnt;
    unsigned int size;

    if (plen < sizeof (*rq))
 return (FALSE);

    size = rq->nbytes;
    if (size > MAX_KDP_DATA_SIZE)
 rp->error = KDPERR_BAD_NBYTES;
    else {
 dprintf(("kdp_writephysmem64 addr %llx size %d\n", rq->address, size));
 cnt = kdp_machine_phys_write(rq, rq->data, rq->lcpu);
 rp->error = KDPERR_ACCESS(size, cnt);
 dprintf(("  cnt %lld error %d\n", cnt, rp->error));
    }

    rp->hdr.is_reply = 1;
    rp->hdr.len = sizeof (*rp);

    *reply_port = kdp.reply_port;
    *len = rp->hdr.len;

    return (TRUE);
}
