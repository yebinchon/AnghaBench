
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int kdp_version_req_t ;
struct TYPE_6__ {int is_reply; int len; } ;
struct TYPE_7__ {TYPE_1__ hdr; scalar_t__ feature; int version; } ;
typedef TYPE_2__ kdp_version_reply_t ;
struct TYPE_8__ {TYPE_2__ version_reply; int version_req; } ;
typedef TYPE_3__ kdp_pkt_t ;
typedef int boolean_t ;
struct TYPE_9__ {unsigned short reply_port; } ;


 int FALSE ;
 int KDP_BP_DIS ;
 scalar_t__ KDP_FEATURE_BP ;
 int KDP_VERSION ;
 int TRUE ;
 int dprintf (char*) ;
 TYPE_5__ kdp ;
 int kdp_flag ;

__attribute__((used)) static boolean_t
kdp_version(
    kdp_pkt_t *pkt,
    int *len,
    unsigned short *reply_port
)
{
    kdp_version_req_t *rq = &pkt->version_req;
    size_t plen = *len;
    kdp_version_reply_t *rp = &pkt->version_reply;

    if (plen < sizeof (*rq))
 return (FALSE);

    rp->hdr.is_reply = 1;
    rp->hdr.len = sizeof (*rp);

    dprintf(("kdp_version\n"));

    rp->version = KDP_VERSION;
    if (!(kdp_flag & KDP_BP_DIS))
      rp->feature = KDP_FEATURE_BP;
    else
      rp->feature = 0;

    *reply_port = kdp.reply_port;
    *len = rp->hdr.len;

    return (TRUE);
}
