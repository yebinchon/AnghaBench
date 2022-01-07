
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int SAMPLES_PER_FRAME ;
 float* ff_atrac_sf_table ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 float* inv_max_quant ;
 int memset (float*,int ,int) ;
 int read_quant_spectral_coeffs (int *,int,int,int*,int) ;
 int* subband_tab ;

__attribute__((used)) static int decode_spectrum(GetBitContext *gb, float *output)
{
    int num_subbands, coding_mode, i, j, first, last, subband_size;
    int subband_vlc_index[32], sf_index[32];
    int mantissas[128];
    float scale_factor;

    num_subbands = get_bits(gb, 5);
    coding_mode = get_bits1(gb);


    for (i = 0; i <= num_subbands; i++)
        subband_vlc_index[i] = get_bits(gb, 3);


    for (i = 0; i <= num_subbands; i++) {
        if (subband_vlc_index[i] != 0)
            sf_index[i] = get_bits(gb, 6);
    }

    for (i = 0; i <= num_subbands; i++) {
        first = subband_tab[i ];
        last = subband_tab[i + 1];

        subband_size = last - first;

        if (subband_vlc_index[i] != 0) {



            read_quant_spectral_coeffs(gb, subband_vlc_index[i], coding_mode,
                                       mantissas, subband_size);


            scale_factor = ff_atrac_sf_table[sf_index[i]] *
                           inv_max_quant[subband_vlc_index[i]];


            for (j = 0; first < last; first++, j++)
                output[first] = mantissas[j] * scale_factor;
        } else {

            memset(output + first, 0, subband_size * sizeof(*output));
        }
    }


    first = subband_tab[i];
    memset(output + first, 0, (SAMPLES_PER_FRAME - first) * sizeof(*output));
    return num_subbands;
}
