#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mach_vm_size_t ;
typedef  int /*<<< orphan*/  mach_vm_address_t ;
struct TYPE_8__ {unsigned int nbytes; scalar_t__ address; } ;
typedef  TYPE_2__ kdp_readmem_req_t ;
struct TYPE_7__ {int is_reply; int len; } ;
struct TYPE_9__ {TYPE_1__ hdr; int /*<<< orphan*/  error; scalar_t__ data; } ;
typedef  TYPE_3__ kdp_readmem_reply_t ;
struct TYPE_10__ {TYPE_3__ readmem_reply; TYPE_2__ readmem_req; } ;
typedef  TYPE_4__ kdp_pkt_t ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_11__ {unsigned short reply_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  KDPERR_BAD_NBYTES ; 
 unsigned int MAX_KDP_DATA_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_6__ kdp ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static boolean_t
FUNC3(
    kdp_pkt_t		*pkt,
    int			*len,
    unsigned short	*reply_port
)
{
    kdp_readmem_req_t	*rq = &pkt->readmem_req;
    size_t		plen = *len;
    kdp_readmem_reply_t *rp = &pkt->readmem_reply;
    mach_vm_size_t	cnt;
    unsigned int	size;

    if (plen < sizeof (*rq))
	return (FALSE);

    rp->hdr.is_reply = 1;
    rp->hdr.len = sizeof (*rp);

    size = rq->nbytes;
    if (size > MAX_KDP_DATA_SIZE)
	rp->error = KDPERR_BAD_NBYTES;
    else {
	FUNC1(("kdp_readmem addr %x size %d\n", rq->address, size));
	cnt = FUNC2((mach_vm_address_t)rq->address, (caddr_t)rp->data, rq->nbytes);
	rp->error = FUNC0(size, cnt);
	FUNC1(("  cnt %lld error %d\n", cnt, rp->error));

	rp->hdr.len += cnt;
    }

    *reply_port = kdp.reply_port;
    *len = rp->hdr.len;
    
    return (TRUE);
}