#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_6__ {int*** dequant8_coeff; int*** dequant8_buffer; int** scaling_matrix8; } ;
struct TYPE_5__ {int bit_depth_luma; } ;
typedef  TYPE_1__ SPS ;
typedef  TYPE_2__ PPS ;

/* Variables and functions */
 scalar_t__** ff_h264_dequant8_coeff_init ; 
 size_t* ff_h264_dequant8_coeff_init_scan ; 
 int* ff_h264_quant_div6 ; 
 int* ff_h264_quant_rem6 ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 

__attribute__((used)) static void FUNC1(PPS *pps, const SPS *sps)
{
    int i, j, q, x;
    const int max_qp = 51 + 6 * (sps->bit_depth_luma - 8);

    for (i = 0; i < 6; i++) {
        pps->dequant8_coeff[i] = pps->dequant8_buffer[i];
        for (j = 0; j < i; j++)
            if (!FUNC0(pps->scaling_matrix8[j], pps->scaling_matrix8[i],
                        64 * sizeof(uint8_t))) {
                pps->dequant8_coeff[i] = pps->dequant8_buffer[j];
                break;
            }
        if (j < i)
            continue;

        for (q = 0; q < max_qp + 1; q++) {
            int shift = ff_h264_quant_div6[q];
            int idx   = ff_h264_quant_rem6[q];
            for (x = 0; x < 64; x++)
                pps->dequant8_coeff[i][q][(x >> 3) | ((x & 7) << 3)] =
                    ((uint32_t)ff_h264_dequant8_coeff_init[idx][ff_h264_dequant8_coeff_init_scan[((x >> 1) & 12) | (x & 3)]] *
                     pps->scaling_matrix8[i][x]) << shift;
        }
    }
}