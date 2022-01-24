#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  (* dct_calc ) (TYPE_4__*,double*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  (* rdft_calc ) (TYPE_3__*,double*) ;} ;
struct TYPE_6__ {TYPE_3__ rdft; TYPE_4__ dct; } ;
struct TYPE_7__ {int channels; double root; int num_bands; int frame_len; int* bands; int overlap_len; int** previous; scalar_t__ first; TYPE_1__ trans; scalar_t__ version_b; int /*<<< orphan*/  gb; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  double FFTSample ;
typedef  TYPE_2__ BinkAudioContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 scalar_t__ CONFIG_BINKAUDIO_DCT_DECODER ; 
 scalar_t__ CONFIG_BINKAUDIO_RDFT_DECODER ; 
 size_t FUNC0 (int,int) ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 double FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int*,float*,int) ; 
 int /*<<< orphan*/  FUNC8 (double*,int /*<<< orphan*/ ,int) ; 
 float* quant_table ; 
 int* rle_length_tab ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,double*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,double*) ; 

__attribute__((used)) static int FUNC12(BinkAudioContext *s, float **out, int use_dct)
{
    int ch, i, j, k;
    float q, quant[25];
    int width, coeff;
    GetBitContext *gb = &s->gb;

    if (use_dct)
        FUNC9(gb, 2);

    for (ch = 0; ch < s->channels; ch++) {
        FFTSample *coeffs = out[ch];

        if (s->version_b) {
            if (FUNC4(gb) < 64)
                return AVERROR_INVALIDDATA;
            coeffs[0] = FUNC1(FUNC5(gb, 32)) * s->root;
            coeffs[1] = FUNC1(FUNC5(gb, 32)) * s->root;
        } else {
            if (FUNC4(gb) < 58)
                return AVERROR_INVALIDDATA;
            coeffs[0] = FUNC6(gb) * s->root;
            coeffs[1] = FUNC6(gb) * s->root;
        }

        if (FUNC4(gb) < s->num_bands * 8)
            return AVERROR_INVALIDDATA;
        for (i = 0; i < s->num_bands; i++) {
            int value = FUNC2(gb, 8);
            quant[i]  = quant_table[FUNC0(value, 95)];
        }

        k = 0;
        q = quant[0];

        // parse coefficients
        i = 2;
        while (i < s->frame_len) {
            if (s->version_b) {
                j = i + 16;
            } else {
                int v = FUNC3(gb);
                if (v) {
                    v = FUNC2(gb, 4);
                    j = i + rle_length_tab[v] * 8;
                } else {
                    j = i + 8;
                }
            }

            j = FUNC0(j, s->frame_len);

            width = FUNC2(gb, 4);
            if (width == 0) {
                FUNC8(coeffs + i, 0, (j - i) * sizeof(*coeffs));
                i = j;
                while (s->bands[k] < i)
                    q = quant[k++];
            } else {
                while (i < j) {
                    if (s->bands[k] == i)
                        q = quant[k++];
                    coeff = FUNC2(gb, width);
                    if (coeff) {
                        int v;
                        v = FUNC3(gb);
                        if (v)
                            coeffs[i] = -q * coeff;
                        else
                            coeffs[i] =  q * coeff;
                    } else {
                        coeffs[i] = 0.0f;
                    }
                    i++;
                }
            }
        }

        if (CONFIG_BINKAUDIO_DCT_DECODER && use_dct) {
            coeffs[0] /= 0.5;
            s->trans.dct.dct_calc(&s->trans.dct,  coeffs);
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
                                      out[ch][i] *          j) / count;
        }
        FUNC7(s->previous[ch], &out[ch][s->frame_len - s->overlap_len],
               s->overlap_len * sizeof(*s->previous[ch]));
    }

    s->first = 0;

    return 0;
}