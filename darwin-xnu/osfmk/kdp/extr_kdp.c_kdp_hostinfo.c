
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int is_reply; int len; } ;
struct TYPE_8__ {TYPE_1__ hdr; int hostinfo; } ;
struct TYPE_7__ {TYPE_3__ hostinfo_reply; int hostinfo_req; } ;
typedef TYPE_2__ kdp_pkt_t ;
typedef int kdp_hostinfo_req_t ;
typedef TYPE_3__ kdp_hostinfo_reply_t ;
typedef int boolean_t ;
struct TYPE_9__ {unsigned short reply_port; } ;


 int FALSE ;
 int TRUE ;
 int dprintf (char*) ;
 TYPE_5__ kdp ;
 int kdp_machine_hostinfo (int *) ;

__attribute__((used)) static boolean_t
kdp_hostinfo(
    kdp_pkt_t *pkt,
    int *len,
    unsigned short *reply_port
)
{
    kdp_hostinfo_req_t *rq = &pkt->hostinfo_req;
    size_t plen = *len;
    kdp_hostinfo_reply_t *rp = &pkt->hostinfo_reply;

    if (plen < sizeof (*rq))
 return (FALSE);

    dprintf(("kdp_hostinfo\n"));

    rp->hdr.is_reply = 1;
    rp->hdr.len = sizeof (*rp);

    kdp_machine_hostinfo(&rp->hostinfo);

    *reply_port = kdp.reply_port;
    *len = rp->hdr.len;

    return (TRUE);
}
