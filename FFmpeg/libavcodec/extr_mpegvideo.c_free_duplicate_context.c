
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int score_map; int map; int temp; int scratchpad; } ;
struct TYPE_5__ {int * obmc_scratchpad; int b_scratchpad; int rd_scratchpad; int edge_emu_buffer; } ;
struct TYPE_7__ {int * block; int ac_val_base; int dpcm_macroblock; int block32; int blocks; TYPE_2__ me; int dct_error_sum; TYPE_1__ sc; } ;
typedef TYPE_3__ MpegEncContext ;


 int av_freep (int *) ;

__attribute__((used)) static void free_duplicate_context(MpegEncContext *s)
{
    if (!s)
        return;

    av_freep(&s->sc.edge_emu_buffer);
    av_freep(&s->me.scratchpad);
    s->me.temp =
    s->sc.rd_scratchpad =
    s->sc.b_scratchpad =
    s->sc.obmc_scratchpad = ((void*)0);

    av_freep(&s->dct_error_sum);
    av_freep(&s->me.map);
    av_freep(&s->me.score_map);
    av_freep(&s->blocks);
    av_freep(&s->block32);
    av_freep(&s->dpcm_macroblock);
    av_freep(&s->ac_val_base);
    s->block = ((void*)0);
}
