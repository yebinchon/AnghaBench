
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* instance; } ;
struct TYPE_5__ {int numDesc; int numSlice; TYPE_2__* slice; TYPE_2__* desc; } ;
typedef TYPE_1__ SwsContext ;


 int av_freep (TYPE_2__**) ;
 int free_slice (TYPE_2__*) ;

int ff_free_filters(SwsContext *c)
{
    int i;
    if (c->desc) {
        for (i = 0; i < c->numDesc; ++i)
            av_freep(&c->desc[i].instance);
        av_freep(&c->desc);
    }

    if (c->slice) {
        for (i = 0; i < c->numSlice; ++i)
            free_slice(&c->slice[i]);
        av_freep(&c->slice);
    }
    return 0;
}
