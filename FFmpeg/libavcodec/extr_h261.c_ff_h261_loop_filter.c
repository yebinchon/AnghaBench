
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int mtype; } ;
struct TYPE_4__ {int linesize; int uvlinesize; int ** dest; } ;
typedef TYPE_1__ MpegEncContext ;
typedef TYPE_2__ H261Context ;


 int IS_FIL (int ) ;
 int h261_loop_filter (int *,int const) ;

void ff_h261_loop_filter(MpegEncContext *s)
{
    H261Context *h = (H261Context *)s;
    const int linesize = s->linesize;
    const int uvlinesize = s->uvlinesize;
    uint8_t *dest_y = s->dest[0];
    uint8_t *dest_cb = s->dest[1];
    uint8_t *dest_cr = s->dest[2];

    if (!(IS_FIL(h->mtype)))
        return;

    h261_loop_filter(dest_y, linesize);
    h261_loop_filter(dest_y + 8, linesize);
    h261_loop_filter(dest_y + 8 * linesize, linesize);
    h261_loop_filter(dest_y + 8 * linesize + 8, linesize);
    h261_loop_filter(dest_cb, uvlinesize);
    h261_loop_filter(dest_cr, uvlinesize);
}
