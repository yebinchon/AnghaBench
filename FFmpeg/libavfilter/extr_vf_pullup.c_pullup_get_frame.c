
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__* ifields; int length; size_t parity; scalar_t__ buffer; scalar_t__* ofields; scalar_t__ lock; } ;
struct TYPE_9__ {TYPE_1__* first; TYPE_2__ frame; } ;
struct TYPE_7__ {int affinity; size_t parity; scalar_t__ buffer; struct TYPE_7__* next; } ;
typedef TYPE_2__ PullupFrame ;
typedef TYPE_3__ PullupContext ;


 int FF_ARRAY_ELEMS (scalar_t__*) ;
 int av_assert1 (int) ;
 int decide_frame_length (TYPE_3__*) ;
 int pullup_lock_buffer (scalar_t__,int) ;

__attribute__((used)) static PullupFrame *pullup_get_frame(PullupContext *s)
{
    PullupFrame *fr = &s->frame;
    int i, n = decide_frame_length(s);
    int aff = s->first->next->affinity;

    av_assert1(n < FF_ARRAY_ELEMS(fr->ifields));
    if (!n || fr->lock)
        return ((void*)0);

    fr->lock++;
    fr->length = n;
    fr->parity = s->first->parity;
    fr->buffer = 0;

    for (i = 0; i < n; i++) {

        fr->ifields[i] = s->first->buffer;
        s->first->buffer = 0;
        s->first = s->first->next;
    }

    if (n == 1) {
        fr->ofields[fr->parity ] = fr->ifields[0];
        fr->ofields[fr->parity ^ 1] = 0;
    } else if (n == 2) {
        fr->ofields[fr->parity ] = fr->ifields[0];
        fr->ofields[fr->parity ^ 1] = fr->ifields[1];
    } else if (n == 3) {
        if (!aff)
            aff = (fr->ifields[0] == fr->ifields[1]) ? -1 : 1;
        fr->ofields[fr->parity ] = fr->ifields[1 + aff];
        fr->ofields[fr->parity ^ 1] = fr->ifields[1 ];
    }

    pullup_lock_buffer(fr->ofields[0], 0);
    pullup_lock_buffer(fr->ofields[1], 1);

    if (fr->ofields[0] == fr->ofields[1]) {
        fr->buffer = fr->ofields[0];
        pullup_lock_buffer(fr->buffer, 2);
        return fr;
    }

    return fr;
}
