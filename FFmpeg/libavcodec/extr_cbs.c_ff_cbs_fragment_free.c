
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nb_units_allocated; int units; } ;
typedef TYPE_1__ CodedBitstreamFragment ;
typedef int CodedBitstreamContext ;


 int av_freep (int *) ;
 int ff_cbs_fragment_reset (int *,TYPE_1__*) ;

void ff_cbs_fragment_free(CodedBitstreamContext *ctx,
                          CodedBitstreamFragment *frag)
{
    ff_cbs_fragment_reset(ctx, frag);

    av_freep(&frag->units);
    frag->nb_units_allocated = 0;
}
