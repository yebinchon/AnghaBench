
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_5__ {int bits; int table; } ;
typedef TYPE_1__ VLC ;
struct TYPE_6__ {int group_size; int num_coeffs; int bits; int is_signed; } ;
typedef int GetBitContext ;
typedef TYPE_2__ Atrac3pSpecCodeTab ;


 int av_mod_uintp2 (unsigned int,int) ;
 scalar_t__ get_bits1 (int *) ;
 unsigned int get_vlc2 (int *,int ,int ,int) ;
 int sign_extend (int,int) ;

__attribute__((used)) static void decode_qu_spectra(GetBitContext *gb, const Atrac3pSpecCodeTab *tab,
                              VLC *vlc_tab, int16_t *out, const int num_specs)
{
    int i, j, pos, cf;
    int group_size = tab->group_size;
    int num_coeffs = tab->num_coeffs;
    int bits = tab->bits;
    int is_signed = tab->is_signed;
    unsigned val;

    for (pos = 0; pos < num_specs;) {
        if (group_size == 1 || get_bits1(gb)) {
            for (j = 0; j < group_size; j++) {
                val = get_vlc2(gb, vlc_tab->table, vlc_tab->bits, 1);

                for (i = 0; i < num_coeffs; i++) {
                    cf = av_mod_uintp2(val, bits);
                    if (is_signed)
                        cf = sign_extend(cf, bits);
                    else if (cf && get_bits1(gb))
                        cf = -cf;

                    out[pos++] = cf;
                    val >>= bits;
                }
            }
        } else
            pos += group_size * num_coeffs;
    }
}
