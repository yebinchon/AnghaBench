
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mach_vm_size_t ;
typedef int mach_vm_address_t ;
struct TYPE_8__ {scalar_t__ nbytes; scalar_t__ address; scalar_t__ data; } ;
typedef TYPE_2__ kdp_writemem64_req_t ;
struct TYPE_7__ {int is_reply; int len; } ;
struct TYPE_9__ {TYPE_1__ hdr; int error; } ;
typedef TYPE_3__ kdp_writemem64_reply_t ;
struct TYPE_10__ {TYPE_3__ writemem64_reply; TYPE_2__ writemem64_req; } ;
typedef TYPE_4__ kdp_pkt_t ;
typedef int caddr_t ;
typedef int boolean_t ;
struct TYPE_11__ {unsigned short reply_port; } ;


 int FALSE ;
 int KDPERR_ACCESS (scalar_t__,int ) ;
 int KDPERR_BAD_NBYTES ;
 scalar_t__ MAX_KDP_DATA_SIZE ;
 int TRUE ;
 int dprintf (char*) ;
 TYPE_6__ kdp ;
 int kdp_machine_vm_write (int ,int ,int ) ;

__attribute__((used)) static boolean_t
kdp_writemem64(
    kdp_pkt_t *pkt,
    int *len,
    unsigned short *reply_port
)
{
    kdp_writemem64_req_t *rq = &pkt->writemem64_req;
    size_t plen = *len;
    kdp_writemem64_reply_t *rp = &pkt->writemem64_reply;
    mach_vm_size_t cnt;

    if (plen < sizeof (*rq))
  return (FALSE);

    if (rq->nbytes > MAX_KDP_DATA_SIZE)
 rp->error = KDPERR_BAD_NBYTES;
    else {
 dprintf(("kdp_writemem64 addr %llx size %d\n", rq->address, rq->nbytes));
 cnt = kdp_machine_vm_write((caddr_t)rq->data, (mach_vm_address_t)rq->address, (mach_vm_size_t)rq->nbytes);
 rp->error = KDPERR_ACCESS(rq->nbytes, cnt);
 dprintf(("  cnt %lld error %d\n", cnt, rp->error));
    }

    rp->hdr.is_reply = 1;
    rp->hdr.len = sizeof (*rp);

    *reply_port = kdp.reply_port;
    *len = rp->hdr.len;

    return (TRUE);
}
