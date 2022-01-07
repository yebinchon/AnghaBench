
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_units; scalar_t__ data_bit_padding; scalar_t__ data_size; int * data; int data_ref; int * units; } ;
typedef TYPE_1__ CodedBitstreamFragment ;
typedef int CodedBitstreamContext ;


 int av_buffer_unref (int *) ;
 int cbs_unit_uninit (int *,int *) ;

void ff_cbs_fragment_reset(CodedBitstreamContext *ctx,
                           CodedBitstreamFragment *frag)
{
    int i;

    for (i = 0; i < frag->nb_units; i++)
        cbs_unit_uninit(ctx, &frag->units[i]);
    frag->nb_units = 0;

    av_buffer_unref(&frag->data_ref);
    frag->data = ((void*)0);
    frag->data_size = 0;
    frag->data_bit_padding = 0;
}
