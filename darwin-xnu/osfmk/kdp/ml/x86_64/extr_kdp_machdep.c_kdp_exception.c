
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int len; scalar_t__ key; int seq; scalar_t__ is_reply; int request; } ;
struct TYPE_7__ {int n_exc_info; TYPE_2__ hdr; TYPE_1__* exc_info; } ;
typedef TYPE_3__ kdp_exception_t ;
typedef int kdp_exc_info_t ;
struct TYPE_8__ {unsigned short exception_port; int exception_ack_needed; int exception_seq; } ;
struct TYPE_5__ {unsigned int exception; unsigned int code; unsigned int subcode; scalar_t__ cpu; } ;


 int KDP_EXCEPTION ;
 int TRUE ;
 int bcopy (char*,char*,int) ;
 TYPE_4__ kdp ;

void
kdp_exception(
    unsigned char *pkt,
    int *len,
    unsigned short *remote_port,
    unsigned int exception,
    unsigned int code,
    unsigned int subcode
)
{
    kdp_exception_t *rq = (kdp_exception_t *)pkt;

    rq->hdr.request = KDP_EXCEPTION;
    rq->hdr.is_reply = 0;
    rq->hdr.seq = kdp.exception_seq;
    rq->hdr.key = 0;
    rq->hdr.len = sizeof (*rq);

    rq->n_exc_info = 1;
    rq->exc_info[0].cpu = 0;
    rq->exc_info[0].exception = exception;
    rq->exc_info[0].code = code;
    rq->exc_info[0].subcode = subcode;

    rq->hdr.len += rq->n_exc_info * sizeof (kdp_exc_info_t);

    bcopy((char *)rq, (char *)pkt, rq->hdr.len);

    kdp.exception_ack_needed = TRUE;

    *remote_port = kdp.exception_port;
    *len = rq->hdr.len;
}
