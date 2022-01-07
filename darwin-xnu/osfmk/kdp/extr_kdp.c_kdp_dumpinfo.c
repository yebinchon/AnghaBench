
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int is_reply; int len; } ;
struct TYPE_11__ {TYPE_1__ hdr; } ;
struct TYPE_10__ {int type; int port; int routerip; int destip; int name; } ;
struct TYPE_9__ {TYPE_4__ dumpinfo_reply; TYPE_3__ dumpinfo_req; } ;
typedef TYPE_2__ kdp_pkt_t ;
typedef TYPE_3__ kdp_dumpinfo_req_t ;
typedef TYPE_4__ kdp_dumpinfo_reply_t ;
typedef int boolean_t ;
struct TYPE_12__ {unsigned short reply_port; } ;


 int FALSE ;
 int KDP_DUMPINFO_GETINFO ;
 int KDP_DUMPINFO_MASK ;
 int TRUE ;
 int dprintf (char*) ;
 TYPE_7__ kdp ;
 int kdp_get_dump_info (TYPE_4__*) ;
 int kdp_set_dump_info (int,int ,int ,int ,int ) ;

__attribute__((used)) static boolean_t
kdp_dumpinfo(
 kdp_pkt_t *pkt,
 int *len,
 unsigned short *reply_port
        )
{
 kdp_dumpinfo_req_t *rq = &pkt->dumpinfo_req;
 kdp_dumpinfo_reply_t *rp = &pkt->dumpinfo_reply;
 size_t plen = *len;

 if (plen < sizeof (*rq))
  return (FALSE);

 dprintf(("kdp_dumpinfo file=%s destip=%s routerip=%s\n", rq->name, rq->destip, rq->routerip));
 rp->hdr.is_reply = 1;
 rp->hdr.len = sizeof (*rp);

        if ((rq->type & KDP_DUMPINFO_MASK) != KDP_DUMPINFO_GETINFO) {
            kdp_set_dump_info(rq->type, rq->name, rq->destip, rq->routerip,
                                rq->port);
        }


        kdp_get_dump_info(rp);

 *reply_port = kdp.reply_port;
 *len = rp->hdr.len;

 return (TRUE);
}
