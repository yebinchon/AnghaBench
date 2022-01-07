
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int offset; int size; int entry_point_offset; } ;
struct TYPE_5__ {int rpl_tab_pool; int tab_mvf_pool; TYPE_1__ sh; int vertical_bs; int horizontal_bs; int filter_slice_edges; int tab_slice_address; int qp_y_tab; int is_pcm; int cbf_luma; int tab_ipm; int tab_ct_depth; int skip_flag; int deblock; int sao; } ;
typedef TYPE_2__ HEVCContext ;


 int av_buffer_pool_uninit (int *) ;
 int av_freep (int *) ;

__attribute__((used)) static void pic_arrays_free(HEVCContext *s)
{
    av_freep(&s->sao);
    av_freep(&s->deblock);

    av_freep(&s->skip_flag);
    av_freep(&s->tab_ct_depth);

    av_freep(&s->tab_ipm);
    av_freep(&s->cbf_luma);
    av_freep(&s->is_pcm);

    av_freep(&s->qp_y_tab);
    av_freep(&s->tab_slice_address);
    av_freep(&s->filter_slice_edges);

    av_freep(&s->horizontal_bs);
    av_freep(&s->vertical_bs);

    av_freep(&s->sh.entry_point_offset);
    av_freep(&s->sh.size);
    av_freep(&s->sh.offset);

    av_buffer_pool_uninit(&s->tab_mvf_pool);
    av_buffer_pool_uninit(&s->rpl_tab_pool);
}
