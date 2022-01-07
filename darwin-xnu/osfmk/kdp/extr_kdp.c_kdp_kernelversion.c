
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int is_reply; int len; } ;
struct TYPE_8__ {TYPE_1__ hdr; int version; } ;
struct TYPE_7__ {TYPE_3__ kernelversion_reply; int kernelversion_req; } ;
typedef TYPE_2__ kdp_pkt_t ;
typedef int kdp_kernelversion_req_t ;
typedef TYPE_3__ kdp_kernelversion_reply_t ;
typedef int boolean_t ;
struct TYPE_9__ {unsigned short reply_port; } ;


 int FALSE ;
 int MAX_KDP_DATA_SIZE ;
 int TRUE ;
 int dprintf (char*) ;
 TYPE_5__ kdp ;
 int kdp_kernelversion_string ;
 size_t strlcpy (int ,int ,int ) ;

__attribute__((used)) static boolean_t
kdp_kernelversion(
    kdp_pkt_t *pkt,
    int *len,
    unsigned short *reply_port
)
{
    kdp_kernelversion_req_t *rq = &pkt->kernelversion_req;
    size_t plen = *len;
    kdp_kernelversion_reply_t *rp = &pkt->kernelversion_reply;
 size_t slen;

    if (plen < sizeof (*rq))
  return (FALSE);

    rp->hdr.is_reply = 1;
    rp->hdr.len = sizeof (*rp);

    dprintf(("kdp_kernelversion\n"));
    slen = strlcpy(rp->version, kdp_kernelversion_string, MAX_KDP_DATA_SIZE);

    rp->hdr.len += slen + 1;

    *reply_port = kdp.reply_port;
    *len = rp->hdr.len;

    return (TRUE);
}
