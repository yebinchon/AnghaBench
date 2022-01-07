
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int SUBBAND_SAMPLES ;
 size_t* ff_dca_quant_index_group_size ;
 scalar_t__ ff_dca_vlc_calc_quant_bits (int *,int ,size_t,size_t) ;

__attribute__((used)) static void accumulate_huff_bit_consumption(int abits, int32_t *quantized,
                                            uint32_t *result)
{
    uint8_t sel, id = abits - 1;
    for (sel = 0; sel < ff_dca_quant_index_group_size[id]; sel++)
        result[sel] += ff_dca_vlc_calc_quant_bits(quantized, SUBBAND_SAMPLES,
                                                  sel, id);
}
