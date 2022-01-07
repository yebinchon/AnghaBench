
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpb_cnt; void* time_offset_length; void* dpb_output_delay_length; void* cpb_removal_delay_length; void* initial_cpb_removal_delay_length; } ;
typedef TYPE_1__ SPS ;
typedef int GetBitContext ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,int) ;
 void* get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_ue_golomb_31 (int *) ;
 int get_ue_golomb_long (int *) ;

__attribute__((used)) static inline int decode_hrd_parameters(GetBitContext *gb, AVCodecContext *avctx,
                                        SPS *sps)
{
    int cpb_count, i;
    cpb_count = get_ue_golomb_31(gb) + 1;

    if (cpb_count > 32U) {
        av_log(avctx, AV_LOG_ERROR, "cpb_count %d invalid\n", cpb_count);
        return AVERROR_INVALIDDATA;
    }

    get_bits(gb, 4);
    get_bits(gb, 4);
    for (i = 0; i < cpb_count; i++) {
        get_ue_golomb_long(gb);
        get_ue_golomb_long(gb);
        get_bits1(gb);
    }
    sps->initial_cpb_removal_delay_length = get_bits(gb, 5) + 1;
    sps->cpb_removal_delay_length = get_bits(gb, 5) + 1;
    sps->dpb_output_delay_length = get_bits(gb, 5) + 1;
    sps->time_offset_length = get_bits(gb, 5);
    sps->cpb_cnt = cpb_count;
    return 0;
}
