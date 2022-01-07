
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int chromaFormat; void* bitDepthChromaMinus8; void* bitDepthLumaMinus8; scalar_t__ temporalIdNested; int numTemporalLayers; } ;
typedef TYPE_1__ HEVCDecoderConfigurationRecord ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int FFMAX (int ,unsigned int) ;
 int FFMIN (unsigned int,int) ;
 int HEVC_MAX_SHORT_TERM_REF_PIC_SETS ;
 unsigned int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 void* get_ue_golomb_long (int *) ;
 int hvcc_parse_ptl (int *,TYPE_1__*,unsigned int) ;
 int hvcc_parse_vui (int *,TYPE_1__*,unsigned int) ;
 int parse_rps (int *,unsigned int,unsigned int,unsigned int*) ;
 int skip_bits (int *,int) ;
 int skip_bits1 (int *) ;
 int skip_scaling_list_data (int *) ;
 int skip_sub_layer_ordering_info (int *) ;

__attribute__((used)) static int hvcc_parse_sps(GetBitContext *gb,
                          HEVCDecoderConfigurationRecord *hvcc)
{
    unsigned int i, sps_max_sub_layers_minus1, log2_max_pic_order_cnt_lsb_minus4;
    unsigned int num_short_term_ref_pic_sets, num_delta_pocs[HEVC_MAX_SHORT_TERM_REF_PIC_SETS];

    skip_bits(gb, 4);

    sps_max_sub_layers_minus1 = get_bits (gb, 3);
    hvcc->numTemporalLayers = FFMAX(hvcc->numTemporalLayers,
                                    sps_max_sub_layers_minus1 + 1);

    hvcc->temporalIdNested = get_bits1(gb);

    hvcc_parse_ptl(gb, hvcc, sps_max_sub_layers_minus1);

    get_ue_golomb_long(gb);

    hvcc->chromaFormat = get_ue_golomb_long(gb);

    if (hvcc->chromaFormat == 3)
        skip_bits1(gb);

    get_ue_golomb_long(gb);
    get_ue_golomb_long(gb);

    if (get_bits1(gb)) {
        get_ue_golomb_long(gb);
        get_ue_golomb_long(gb);
        get_ue_golomb_long(gb);
        get_ue_golomb_long(gb);
    }

    hvcc->bitDepthLumaMinus8 = get_ue_golomb_long(gb);
    hvcc->bitDepthChromaMinus8 = get_ue_golomb_long(gb);
    log2_max_pic_order_cnt_lsb_minus4 = get_ue_golomb_long(gb);


    i = get_bits1(gb) ? 0 : sps_max_sub_layers_minus1;
    for (; i <= sps_max_sub_layers_minus1; i++)
        skip_sub_layer_ordering_info(gb);

    get_ue_golomb_long(gb);
    get_ue_golomb_long(gb);
    get_ue_golomb_long(gb);
    get_ue_golomb_long(gb);
    get_ue_golomb_long(gb);
    get_ue_golomb_long(gb);

    if (get_bits1(gb) &&
        get_bits1(gb))
        skip_scaling_list_data(gb);

    skip_bits1(gb);
    skip_bits1(gb);

    if (get_bits1(gb)) {
        skip_bits (gb, 4);
        skip_bits (gb, 4);
        get_ue_golomb_long(gb);
        get_ue_golomb_long(gb);
        skip_bits1 (gb);
    }

    num_short_term_ref_pic_sets = get_ue_golomb_long(gb);
    if (num_short_term_ref_pic_sets > HEVC_MAX_SHORT_TERM_REF_PIC_SETS)
        return AVERROR_INVALIDDATA;

    for (i = 0; i < num_short_term_ref_pic_sets; i++) {
        int ret = parse_rps(gb, i, num_short_term_ref_pic_sets, num_delta_pocs);
        if (ret < 0)
            return ret;
    }

    if (get_bits1(gb)) {
        unsigned num_long_term_ref_pics_sps = get_ue_golomb_long(gb);
        if (num_long_term_ref_pics_sps > 31U)
            return AVERROR_INVALIDDATA;
        for (i = 0; i < num_long_term_ref_pics_sps; i++) {
            int len = FFMIN(log2_max_pic_order_cnt_lsb_minus4 + 4, 16);
            skip_bits (gb, len);
            skip_bits1(gb);
        }
    }

    skip_bits1(gb);
    skip_bits1(gb);

    if (get_bits1(gb))
        hvcc_parse_vui(gb, hvcc, sps_max_sub_layers_minus1);


    return 0;
}
