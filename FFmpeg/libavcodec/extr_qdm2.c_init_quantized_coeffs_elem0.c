
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;
typedef int GetBitContext ;


 int get_bits_left (int *) ;
 int qdm2_get_se_vlc (int *,int *,int) ;
 int qdm2_get_vlc (int *,int *,int ,int) ;
 int vlc_tab_diff ;
 int vlc_tab_level ;
 int vlc_tab_run ;

__attribute__((used)) static int init_quantized_coeffs_elem0(int8_t *quantized_coeffs,
                                        GetBitContext *gb)
{
    int i, k, run, level, diff;

    if (get_bits_left(gb) < 16)
        return -1;
    level = qdm2_get_vlc(gb, &vlc_tab_level, 0, 2);

    quantized_coeffs[0] = level;

    for (i = 0; i < 7; ) {
        if (get_bits_left(gb) < 16)
            return -1;
        run = qdm2_get_vlc(gb, &vlc_tab_run, 0, 1) + 1;

        if (i + run >= 8)
            return -1;

        if (get_bits_left(gb) < 16)
            return -1;
        diff = qdm2_get_se_vlc(&vlc_tab_diff, gb, 2);

        for (k = 1; k <= run; k++)
            quantized_coeffs[i + k] = (level + ((k * diff) / run));

        level += diff;
        i += run;
    }
    return 0;
}
