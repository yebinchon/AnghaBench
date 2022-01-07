
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int kdp_suspend_req_t ;
struct TYPE_6__ {int is_reply; int len; } ;
struct TYPE_7__ {TYPE_1__ hdr; } ;
typedef TYPE_2__ kdp_suspend_reply_t ;
struct TYPE_8__ {TYPE_2__ suspend_reply; int suspend_req; } ;
typedef TYPE_3__ kdp_pkt_t ;
typedef int boolean_t ;
struct TYPE_9__ {unsigned short reply_port; int is_halted; } ;


 int FALSE ;
 int TRUE ;
 int dprintf (char*) ;
 TYPE_5__ kdp ;

__attribute__((used)) static boolean_t
kdp_suspend(
    kdp_pkt_t *pkt,
    int *len,
    unsigned short *reply_port
)
{
    kdp_suspend_req_t *rq = &pkt->suspend_req;
    size_t plen = *len;
    kdp_suspend_reply_t *rp = &pkt->suspend_reply;

    if (plen < sizeof (*rq))
 return (FALSE);

    rp->hdr.is_reply = 1;
    rp->hdr.len = sizeof (*rp);

    dprintf(("kdp_suspend\n"));

    kdp.is_halted = TRUE;

    *reply_port = kdp.reply_port;
    *len = rp->hdr.len;

    return (TRUE);
}
