
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * er_temp_buffer; int * error_status_table; } ;
struct TYPE_7__ {int * obmc_scratchpad; int b_scratchpad; int rd_scratchpad; int * edge_emu_buffer; } ;
struct TYPE_6__ {int temp; int * scratchpad; int * score_map; int * map; } ;
struct TYPE_9__ {int * bits_tab; int * cplx_tab; int * lambda_table; int * mb_index2xy; TYPE_3__ er; int * mbskip_table; int * pred_dir_table; int * cbp_table; int * mbintra_table; int * coded_block_base; int * dc_val_base; int ** p_field_select_table; int *** p_field_mv_table; int *** p_field_mv_table_base; int *** b_field_select_table; int **** b_field_mv_table; int **** b_field_mv_table_base; int * b_direct_mv_table; int * b_bidir_back_mv_table; int * b_bidir_forw_mv_table; int * b_back_mv_table; int * b_forw_mv_table; int * p_mv_table; int * b_direct_mv_table_base; int * b_bidir_back_mv_table_base; int * b_bidir_forw_mv_table_base; int * b_back_mv_table_base; int * b_forw_mv_table_base; int * p_mv_table_base; int * mb_type; int * picture; scalar_t__ allocated_bitstream_buffer_size; int * bitstream_buffer; TYPE_2__ sc; TYPE_1__ me; int ** ac_val; int * ac_val_base; int * dpcm_macroblock; scalar_t__ dpcm_direction; int * pblocks; int * block32; int * blocks; int * block; int * dct_error_sum; int * thread_context; int new_picture; int current_picture; int last_picture; int next_picture; } ;
typedef TYPE_4__ MpegEncContext ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void clear_context(MpegEncContext *s)
{
    int i, j, k;

    memset(&s->next_picture, 0, sizeof(s->next_picture));
    memset(&s->last_picture, 0, sizeof(s->last_picture));
    memset(&s->current_picture, 0, sizeof(s->current_picture));
    memset(&s->new_picture, 0, sizeof(s->new_picture));

    memset(s->thread_context, 0, sizeof(s->thread_context));

    s->me.map = ((void*)0);
    s->me.score_map = ((void*)0);
    s->dct_error_sum = ((void*)0);
    s->block = ((void*)0);
    s->blocks = ((void*)0);
    s->block32 = ((void*)0);
    memset(s->pblocks, 0, sizeof(s->pblocks));
    s->dpcm_direction = 0;
    s->dpcm_macroblock = ((void*)0);
    s->ac_val_base = ((void*)0);
    s->ac_val[0] =
    s->ac_val[1] =
    s->ac_val[2] =((void*)0);
    s->sc.edge_emu_buffer = ((void*)0);
    s->me.scratchpad = ((void*)0);
    s->me.temp =
    s->sc.rd_scratchpad =
    s->sc.b_scratchpad =
    s->sc.obmc_scratchpad = ((void*)0);


    s->bitstream_buffer = ((void*)0);
    s->allocated_bitstream_buffer_size = 0;
    s->picture = ((void*)0);
    s->mb_type = ((void*)0);
    s->p_mv_table_base = ((void*)0);
    s->b_forw_mv_table_base = ((void*)0);
    s->b_back_mv_table_base = ((void*)0);
    s->b_bidir_forw_mv_table_base = ((void*)0);
    s->b_bidir_back_mv_table_base = ((void*)0);
    s->b_direct_mv_table_base = ((void*)0);
    s->p_mv_table = ((void*)0);
    s->b_forw_mv_table = ((void*)0);
    s->b_back_mv_table = ((void*)0);
    s->b_bidir_forw_mv_table = ((void*)0);
    s->b_bidir_back_mv_table = ((void*)0);
    s->b_direct_mv_table = ((void*)0);
    for (i = 0; i < 2; i++) {
        for (j = 0; j < 2; j++) {
            for (k = 0; k < 2; k++) {
                s->b_field_mv_table_base[i][j][k] = ((void*)0);
                s->b_field_mv_table[i][j][k] = ((void*)0);
            }
            s->b_field_select_table[i][j] = ((void*)0);
            s->p_field_mv_table_base[i][j] = ((void*)0);
            s->p_field_mv_table[i][j] = ((void*)0);
        }
        s->p_field_select_table[i] = ((void*)0);
    }

    s->dc_val_base = ((void*)0);
    s->coded_block_base = ((void*)0);
    s->mbintra_table = ((void*)0);
    s->cbp_table = ((void*)0);
    s->pred_dir_table = ((void*)0);

    s->mbskip_table = ((void*)0);

    s->er.error_status_table = ((void*)0);
    s->er.er_temp_buffer = ((void*)0);
    s->mb_index2xy = ((void*)0);
    s->lambda_table = ((void*)0);

    s->cplx_tab = ((void*)0);
    s->bits_tab = ((void*)0);
}
