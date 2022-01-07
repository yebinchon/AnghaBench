
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int er_temp_buffer; int error_status_table; } ;
struct TYPE_5__ {scalar_t__ uvlinesize; scalar_t__ linesize; int bits_tab; int cplx_tab; int lambda_table; int mb_index2xy; TYPE_1__ er; int mbskip_table; int pred_dir_table; int cbp_table; int mbintra_table; int coded_block_base; int dc_val_base; int * p_field_select_table; int *** p_field_mv_table; int ** p_field_mv_table_base; int ** b_field_select_table; int **** b_field_mv_table; int *** b_field_mv_table_base; int * b_direct_mv_table; int * b_bidir_back_mv_table; int * b_bidir_forw_mv_table; int * b_back_mv_table; int * b_forw_mv_table; int * p_mv_table; int b_direct_mv_table_base; int b_bidir_back_mv_table_base; int b_bidir_forw_mv_table_base; int b_back_mv_table_base; int b_forw_mv_table_base; int p_mv_table_base; int mb_type; } ;
typedef TYPE_2__ MpegEncContext ;


 int av_freep (int *) ;

__attribute__((used)) static void free_context_frame(MpegEncContext *s)
{
    int i, j, k;

    av_freep(&s->mb_type);
    av_freep(&s->p_mv_table_base);
    av_freep(&s->b_forw_mv_table_base);
    av_freep(&s->b_back_mv_table_base);
    av_freep(&s->b_bidir_forw_mv_table_base);
    av_freep(&s->b_bidir_back_mv_table_base);
    av_freep(&s->b_direct_mv_table_base);
    s->p_mv_table = ((void*)0);
    s->b_forw_mv_table = ((void*)0);
    s->b_back_mv_table = ((void*)0);
    s->b_bidir_forw_mv_table = ((void*)0);
    s->b_bidir_back_mv_table = ((void*)0);
    s->b_direct_mv_table = ((void*)0);
    for (i = 0; i < 2; i++) {
        for (j = 0; j < 2; j++) {
            for (k = 0; k < 2; k++) {
                av_freep(&s->b_field_mv_table_base[i][j][k]);
                s->b_field_mv_table[i][j][k] = ((void*)0);
            }
            av_freep(&s->b_field_select_table[i][j]);
            av_freep(&s->p_field_mv_table_base[i][j]);
            s->p_field_mv_table[i][j] = ((void*)0);
        }
        av_freep(&s->p_field_select_table[i]);
    }

    av_freep(&s->dc_val_base);
    av_freep(&s->coded_block_base);
    av_freep(&s->mbintra_table);
    av_freep(&s->cbp_table);
    av_freep(&s->pred_dir_table);

    av_freep(&s->mbskip_table);

    av_freep(&s->er.error_status_table);
    av_freep(&s->er.er_temp_buffer);
    av_freep(&s->mb_index2xy);
    av_freep(&s->lambda_table);

    av_freep(&s->cplx_tab);
    av_freep(&s->bits_tab);

    s->linesize = s->uvlinesize = 0;
}
