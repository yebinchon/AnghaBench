
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__* lock; } ;
struct TYPE_9__ {TYPE_3__* buffers; TYPE_1__* last; } ;
struct TYPE_8__ {int parity; TYPE_3__* buffer; } ;
typedef TYPE_2__ PullupContext ;
typedef int PullupBuffer ;


 int FF_ARRAY_ELEMS (TYPE_3__*) ;
 int alloc_buffer (TYPE_2__*,TYPE_3__*) ;
 int * pullup_lock_buffer (TYPE_3__*,int) ;

__attribute__((used)) static PullupBuffer *pullup_get_buffer(PullupContext *s, int parity)
{
    int i;


    if (parity < 2 && s->last && parity != s->last->parity
        && !s->last->buffer->lock[parity]) {
        alloc_buffer(s, s->last->buffer);
        return pullup_lock_buffer(s->last->buffer, parity);
    }


    for (i = 0; i < FF_ARRAY_ELEMS(s->buffers); i++) {
        if (s->buffers[i].lock[0])
            continue;
        if (s->buffers[i].lock[1])
            continue;
        alloc_buffer(s, &s->buffers[i]);
        return pullup_lock_buffer(&s->buffers[i], parity);
    }

    if (parity == 2)
        return 0;


    for (i = 0; i < FF_ARRAY_ELEMS(s->buffers); i++) {
        if (((parity + 1) & 1) && s->buffers[i].lock[0])
            continue;
        if (((parity + 1) & 2) && s->buffers[i].lock[1])
            continue;
        alloc_buffer(s, &s->buffers[i]);
        return pullup_lock_buffer(&s->buffers[i], parity);
    }

    return ((void*)0);
}
