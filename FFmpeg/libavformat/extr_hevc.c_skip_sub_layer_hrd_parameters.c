
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int GetBitContext ;


 int get_ue_golomb_long (int *) ;
 int skip_bits1 (int *) ;

__attribute__((used)) static void skip_sub_layer_hrd_parameters(GetBitContext *gb,
                                          unsigned int cpb_cnt_minus1,
                                          uint8_t sub_pic_hrd_params_present_flag)
{
    unsigned int i;

    for (i = 0; i <= cpb_cnt_minus1; i++) {
        get_ue_golomb_long(gb);
        get_ue_golomb_long(gb);

        if (sub_pic_hrd_params_present_flag) {
            get_ue_golomb_long(gb);
            get_ue_golomb_long(gb);
        }

        skip_bits1(gb);
    }
}
