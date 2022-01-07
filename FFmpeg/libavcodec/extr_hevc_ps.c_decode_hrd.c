
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,unsigned int) ;
 int decode_sublayer_hrd (int *,unsigned int,int) ;
 int get_bits1 (int *) ;
 int get_ue_golomb_long (int *) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int decode_hrd(GetBitContext *gb, int common_inf_present,
                       int max_sublayers)
{
    int nal_params_present = 0, vcl_params_present = 0;
    int subpic_params_present = 0;
    int i;

    if (common_inf_present) {
        nal_params_present = get_bits1(gb);
        vcl_params_present = get_bits1(gb);

        if (nal_params_present || vcl_params_present) {
            subpic_params_present = get_bits1(gb);

            if (subpic_params_present) {
                skip_bits(gb, 8);
                skip_bits(gb, 5);
                skip_bits(gb, 1);
                skip_bits(gb, 5);
            }

            skip_bits(gb, 4);
            skip_bits(gb, 4);

            if (subpic_params_present)
                skip_bits(gb, 4);

            skip_bits(gb, 5);
            skip_bits(gb, 5);
            skip_bits(gb, 5);
        }
    }

    for (i = 0; i < max_sublayers; i++) {
        int low_delay = 0;
        unsigned int nb_cpb = 1;
        int fixed_rate = get_bits1(gb);

        if (!fixed_rate)
            fixed_rate = get_bits1(gb);

        if (fixed_rate)
            get_ue_golomb_long(gb);
        else
            low_delay = get_bits1(gb);

        if (!low_delay) {
            nb_cpb = get_ue_golomb_long(gb) + 1;
            if (nb_cpb < 1 || nb_cpb > 32) {
                av_log(((void*)0), AV_LOG_ERROR, "nb_cpb %d invalid\n", nb_cpb);
                return AVERROR_INVALIDDATA;
            }
        }

        if (nal_params_present)
            decode_sublayer_hrd(gb, nb_cpb, subpic_params_present);
        if (vcl_params_present)
            decode_sublayer_hrd(gb, nb_cpb, subpic_params_present);
    }
    return 0;
}
