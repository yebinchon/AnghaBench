#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {float** coeffs; int num_windows; int num_bands; int* band_start; int* band_type; int /*<<< orphan*/ * band_scales; } ;
typedef  TYPE_1__ On2AVCContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int ON2AVC_SUBFRAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (float*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,float*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,float*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(On2AVCContext *c, GetBitContext *gb, int ch)
{
    int ret;
    int w, b, band_idx;
    float *coeff_ptr;

    if ((ret = FUNC2(c, gb)) < 0)
        return ret;
    if ((ret = FUNC1(c, gb)) < 0)
        return ret;

    coeff_ptr = c->coeffs[ch];
    band_idx  = 0;
    FUNC0(coeff_ptr, 0, ON2AVC_SUBFRAME_SIZE * sizeof(*coeff_ptr));
    for (w = 0; w < c->num_windows; w++) {
        for (b = 0; b < c->num_bands; b++) {
            int band_size = c->band_start[b + 1] - c->band_start[b];
            int band_type = c->band_type[band_idx + b];

            if (!band_type) {
                coeff_ptr += band_size;
                continue;
            }
            if (band_type < 9)
                FUNC4(c, gb, coeff_ptr, band_size, band_type,
                                    c->band_scales[band_idx + b]);
            else
                FUNC3(c, gb, coeff_ptr, band_size, band_type,
                                    c->band_scales[band_idx + b]);
            coeff_ptr += band_size;
        }
        band_idx += c->num_bands;
    }

    return 0;
}