
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mach_vm_address_t ;
struct TYPE_7__ {int is_reply; int len; } ;
struct TYPE_10__ {TYPE_1__ hdr; int error; } ;
struct TYPE_9__ {scalar_t__ address; } ;
struct TYPE_8__ {TYPE_4__ breakpoint64_reply; TYPE_3__ breakpoint64_req; } ;
typedef TYPE_2__ kdp_pkt_t ;
typedef int kdp_error_t ;
typedef TYPE_3__ kdp_breakpoint64_req_t ;
typedef TYPE_4__ kdp_breakpoint64_reply_t ;
typedef int boolean_t ;
struct TYPE_11__ {unsigned short reply_port; } ;


 int FALSE ;
 int TRUE ;
 int dprintf (char*) ;
 TYPE_6__ kdp ;
 int kdp_set_breakpoint_internal (int ) ;

boolean_t
kdp_breakpoint64_set(
    kdp_pkt_t *pkt,
    int *len,
    unsigned short *reply_port
)
{
 kdp_breakpoint64_req_t *rq = &pkt->breakpoint64_req;
 kdp_breakpoint64_reply_t *rp = &pkt->breakpoint64_reply;
 size_t plen = *len;
 kdp_error_t kerr;

 if (plen < sizeof (*rq))
  return (FALSE);

 dprintf(("kdp_breakpoint64_set %llx\n", rq->address));

 kerr = kdp_set_breakpoint_internal((mach_vm_address_t)rq->address);

 rp->error = kerr;

 rp->hdr.is_reply = 1;
 rp->hdr.len = sizeof (*rp);
 *reply_port = kdp.reply_port;
 *len = rp->hdr.len;

 return (TRUE);
}
