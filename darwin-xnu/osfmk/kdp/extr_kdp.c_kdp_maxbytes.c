
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int is_reply; int len; } ;
struct TYPE_8__ {TYPE_1__ hdr; int max_bytes; } ;
struct TYPE_7__ {TYPE_3__ maxbytes_reply; int maxbytes_req; } ;
typedef TYPE_2__ kdp_pkt_t ;
typedef int kdp_maxbytes_req_t ;
typedef TYPE_3__ kdp_maxbytes_reply_t ;
typedef int boolean_t ;
struct TYPE_9__ {unsigned short reply_port; } ;


 int FALSE ;
 int MAX_KDP_DATA_SIZE ;
 int TRUE ;
 int dprintf (char*) ;
 TYPE_5__ kdp ;

__attribute__((used)) static boolean_t
kdp_maxbytes(
    kdp_pkt_t *pkt,
    int *len,
    unsigned short *reply_port
)
{
    kdp_maxbytes_req_t *rq = &pkt->maxbytes_req;
    size_t plen = *len;
    kdp_maxbytes_reply_t *rp = &pkt->maxbytes_reply;

    if (plen < sizeof (*rq))
 return (FALSE);

    rp->hdr.is_reply = 1;
    rp->hdr.len = sizeof (*rp);

    dprintf(("kdp_maxbytes\n"));

    rp->max_bytes = MAX_KDP_DATA_SIZE;

    *reply_port = kdp.reply_port;
    *len = rp->hdr.len;

    return (TRUE);
}
