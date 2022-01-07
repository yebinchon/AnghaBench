
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int16_t ;
typedef int GetBitContext ;


 scalar_t__** ff_gsm_dequant_tab ;
 size_t** ff_gsm_requant_tab ;
 int get_bits (int *,int const) ;

__attribute__((used)) static void apcm_dequant_add(GetBitContext *gb, int16_t *dst, const int *frame_bits)
{
    int i, val;
    int maxidx = get_bits(gb, 6);
    const int16_t *tab = ff_gsm_dequant_tab[maxidx];
    for (i = 0; i < 13; i++) {
        val = get_bits(gb, frame_bits[i]);
        dst[3 * i] += tab[ff_gsm_requant_tab[frame_bits[i]][val]];
    }
}
