
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int fbw_channels; int* first_spx_coords; int spx_src_start_freq; int num_spx_bands; int* spx_band_sizes; float spx_dst_end_freq; int** spx_noise_blend; int** spx_signal_blend; scalar_t__* channel_uses_spx; int gbc; } ;
typedef int INTFLOAT ;
typedef int GetBitContext ;
typedef TYPE_1__ AC3DecodeContext ;


 int AC3_SPX_BLEND (int) ;
 int av_clipf (int,float,float) ;
 int fixed_sqrt (int,int) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int sqrtf (float) ;

__attribute__((used)) static inline void spx_coordinates(AC3DecodeContext *s)
{
    GetBitContext *bc = &s->gbc;
    int fbw_channels = s->fbw_channels;
    int ch, bnd;

    for (ch = 1; ch <= fbw_channels; ch++) {
        if (s->channel_uses_spx[ch]) {
            if (s->first_spx_coords[ch] || get_bits1(bc)) {
                INTFLOAT spx_blend;
                int bin, master_spx_coord;

                s->first_spx_coords[ch] = 0;
                spx_blend = AC3_SPX_BLEND(get_bits(bc, 5));
                master_spx_coord = get_bits(bc, 2) * 3;

                bin = s->spx_src_start_freq;
                for (bnd = 0; bnd < s->num_spx_bands; bnd++) {
                    int bandsize = s->spx_band_sizes[bnd];
                    int spx_coord_exp, spx_coord_mant;
                    INTFLOAT nratio, sblend, nblend;
                    float spx_coord;


                    nratio = ((float)((bin + (bandsize >> 1))) / s->spx_dst_end_freq) - spx_blend;
                    nratio = av_clipf(nratio, 0.0f, 1.0f);
                    nblend = sqrtf(3.0f * nratio);

                    sblend = sqrtf(1.0f - nratio);

                    bin += bandsize;


                    spx_coord_exp = get_bits(bc, 4);
                    spx_coord_mant = get_bits(bc, 2);
                    if (spx_coord_exp == 15) spx_coord_mant <<= 1;
                    else spx_coord_mant += 4;
                    spx_coord_mant <<= (25 - spx_coord_exp - master_spx_coord);
                    spx_coord = spx_coord_mant * (1.0f / (1 << 23));
                    s->spx_noise_blend [ch][bnd] = nblend * spx_coord;
                    s->spx_signal_blend[ch][bnd] = sblend * spx_coord;

                }
            }
        } else {
            s->first_spx_coords[ch] = 1;
        }
    }
}
