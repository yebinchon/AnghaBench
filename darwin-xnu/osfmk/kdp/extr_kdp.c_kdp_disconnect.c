
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int is_reply; int len; } ;
struct TYPE_8__ {TYPE_1__ hdr; } ;
struct TYPE_7__ {TYPE_3__ disconnect_reply; int disconnect_req; } ;
typedef TYPE_2__ kdp_pkt_t ;
typedef int kdp_disconnect_req_t ;
typedef TYPE_3__ kdp_disconnect_reply_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_9__ {unsigned short reply_port; unsigned short exception_port; scalar_t__ session_key; scalar_t__ conn_seq; scalar_t__ exception_seq; scalar_t__ is_conn; scalar_t__ is_halted; } ;


 scalar_t__ FALSE ;
 scalar_t__ KDP_CUR_DB ;
 scalar_t__ TRUE ;
 scalar_t__ active_debugger ;
 scalar_t__ current_debugger ;
 int * debugger_panic_str ;
 int dprintf (char*) ;
 TYPE_5__ kdp ;
 int noresume_on_disconnect ;
 int reattach_wait ;

__attribute__((used)) static boolean_t
kdp_disconnect(
    kdp_pkt_t *pkt,
    int *len,
    unsigned short *reply_port
)
{
    kdp_disconnect_req_t *rq = &pkt->disconnect_req;
    size_t plen = *len;
    kdp_disconnect_reply_t *rp = &pkt->disconnect_reply;

    if (plen < sizeof (*rq))
 return (FALSE);

    if (!kdp.is_conn)
 return (FALSE);

    dprintf(("kdp_disconnect\n"));

    *reply_port = kdp.reply_port;

    kdp.reply_port = kdp.exception_port = 0;
    kdp.is_halted = kdp.is_conn = FALSE;
    kdp.exception_seq = kdp.conn_seq = 0;
    kdp.session_key = 0;

    if (debugger_panic_str != ((void*)0))
 reattach_wait = 1;

    if (noresume_on_disconnect == 1) {
 reattach_wait = 1;
 noresume_on_disconnect = 0;
    }

    rp->hdr.is_reply = 1;
    rp->hdr.len = sizeof (*rp);

    *len = rp->hdr.len;

    if (current_debugger == KDP_CUR_DB)
     active_debugger=0;

    return (TRUE);
}
