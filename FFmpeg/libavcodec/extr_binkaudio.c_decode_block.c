
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int (* dct_calc ) (TYPE_4__*,double*) ;} ;
struct TYPE_8__ {int (* rdft_calc ) (TYPE_3__*,double*) ;} ;
struct TYPE_6__ {TYPE_3__ rdft; TYPE_4__ dct; } ;
struct TYPE_7__ {int channels; double root; int num_bands; int frame_len; int* bands; int overlap_len; int** previous; scalar_t__ first; TYPE_1__ trans; scalar_t__ version_b; int gb; } ;
typedef int GetBitContext ;
typedef double FFTSample ;
typedef TYPE_2__ BinkAudioContext ;


 int AVERROR_INVALIDDATA ;
 scalar_t__ CONFIG_BINKAUDIO_DCT_DECODER ;
 scalar_t__ CONFIG_BINKAUDIO_RDFT_DECODER ;
 size_t FFMIN (int,int) ;
 double av_int2float (int ) ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_bits_left (int *) ;
 int get_bits_long (int *,int) ;
 double get_float (int *) ;
 int memcpy (int*,float*,int) ;
 int memset (double*,int ,int) ;
 float* quant_table ;
 int* rle_length_tab ;
 int skip_bits (int *,int) ;
 int stub1 (TYPE_4__*,double*) ;
 int stub2 (TYPE_3__*,double*) ;

__attribute__((used)) static int decode_block(BinkAudioContext *s, float **out, int use_dct)
{
    int ch, i, j, k;
    float q, quant[25];
    int width, coeff;
    GetBitContext *gb = &s->gb;

    if (use_dct)
        skip_bits(gb, 2);

    for (ch = 0; ch < s->channels; ch++) {
        FFTSample *coeffs = out[ch];

        if (s->version_b) {
            if (get_bits_left(gb) < 64)
                return AVERROR_INVALIDDATA;
            coeffs[0] = av_int2float(get_bits_long(gb, 32)) * s->root;
            coeffs[1] = av_int2float(get_bits_long(gb, 32)) * s->root;
        } else {
            if (get_bits_left(gb) < 58)
                return AVERROR_INVALIDDATA;
            coeffs[0] = get_float(gb) * s->root;
            coeffs[1] = get_float(gb) * s->root;
        }

        if (get_bits_left(gb) < s->num_bands * 8)
            return AVERROR_INVALIDDATA;
        for (i = 0; i < s->num_bands; i++) {
            int value = get_bits(gb, 8);
            quant[i] = quant_table[FFMIN(value, 95)];
        }

        k = 0;
        q = quant[0];


        i = 2;
        while (i < s->frame_len) {
            if (s->version_b) {
                j = i + 16;
            } else {
                int v = get_bits1(gb);
                if (v) {
                    v = get_bits(gb, 4);
                    j = i + rle_length_tab[v] * 8;
                } else {
                    j = i + 8;
                }
            }

            j = FFMIN(j, s->frame_len);

            width = get_bits(gb, 4);
            if (width == 0) {
                memset(coeffs + i, 0, (j - i) * sizeof(*coeffs));
                i = j;
                while (s->bands[k] < i)
                    q = quant[k++];
            } else {
                while (i < j) {
                    if (s->bands[k] == i)
                        q = quant[k++];
                    coeff = get_bits(gb, width);
                    if (coeff) {
                        int v;
                        v = get_bits1(gb);
                        if (v)
                            coeffs[i] = -q * coeff;
                        else
                            coeffs[i] = q * coeff;
                    } else {
                        coeffs[i] = 0.0f;
                    }
                    i++;
                }
            }
        }

        if (CONFIG_BINKAUDIO_DCT_DECODER && use_dct) {
            coeffs[0] /= 0.5;
            s->trans.dct.dct_calc(&s->trans.dct, coeffs);
        }
        else if (CONFIG_BINKAUDIO_RDFT_DECODER)
            s->trans.rdft.rdft_calc(&s->trans.rdft, coeffs);
    }

    for (ch = 0; ch < s->channels; ch++) {
        int j;
        int count = s->overlap_len * s->channels;
        if (!s->first) {
            j = ch;
            for (i = 0; i < s->overlap_len; i++, j += s->channels)
                out[ch][i] = (s->previous[ch][i] * (count - j) +
                                      out[ch][i] * j) / count;
        }
        memcpy(s->previous[ch], &out[ch][s->frame_len - s->overlap_len],
               s->overlap_len * sizeof(*s->previous[ch]));
    }

    s->first = 0;

    return 0;
}
