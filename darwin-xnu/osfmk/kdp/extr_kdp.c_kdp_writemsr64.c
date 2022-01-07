
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int lcpu; int data; int address; } ;
typedef TYPE_2__ kdp_writemsr64_req_t ;
struct TYPE_8__ {int is_reply; int len; } ;
struct TYPE_10__ {TYPE_1__ hdr; int error; } ;
typedef TYPE_3__ kdp_writemsr64_reply_t ;
struct TYPE_11__ {TYPE_3__ writemsr64_reply; TYPE_2__ writemsr64_req; } ;
typedef TYPE_4__ kdp_pkt_t ;
typedef int boolean_t ;
struct TYPE_12__ {unsigned short reply_port; } ;


 int FALSE ;
 int TRUE ;
 int dprintf (char*) ;
 TYPE_7__ kdp ;
 int kdp_machine_msr64_write (TYPE_2__*,int ,int ) ;

__attribute__((used)) static boolean_t
kdp_writemsr64(
 kdp_pkt_t *pkt,
 int *len,
 unsigned short *reply_port
        )
{
 kdp_writemsr64_req_t *rq = &pkt->writemsr64_req;
 kdp_writemsr64_reply_t *rp = &pkt->writemsr64_reply;
 size_t plen = *len;

 if (plen < sizeof (*rq))
  return (FALSE);

 dprintf(("kdp_writemsr64 lcpu %x addr %x\n", rq->lcpu, rq->address));
 rp->error = kdp_machine_msr64_write(rq, rq->data, rq->lcpu);

 rp->hdr.is_reply = 1;
 rp->hdr.len = sizeof (*rp);

 *reply_port = kdp.reply_port;
 *len = rp->hdr.len;

 return (TRUE);
}
