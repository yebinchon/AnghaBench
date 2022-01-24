#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  DCAADPCMEncContext ;

/* Variables and functions */
 int DCA_ADPCM_COEFFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ *,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int) ; 

int FUNC5(const DCAADPCMEncContext *s, const int32_t *in, int len, int *diff)
{
    int pred_vq, i;
    int32_t input_buffer[16 + DCA_ADPCM_COEFFS];
    int32_t input_buffer2[16 + DCA_ADPCM_COEFFS];

    int32_t max = 0;
    int shift_bits;
    uint64_t pg = 0;

    for (i = 0; i < len + DCA_ADPCM_COEFFS; i++)
        max |= FUNC0(in[i]);

    // normalize input to simplify apply_filter
    shift_bits = FUNC1(max) - 11;

    for (i = 0; i < len + DCA_ADPCM_COEFFS; i++) {
        input_buffer[i] = FUNC4(in[i], 7);
        input_buffer2[i] = FUNC4(in[i], shift_bits);
    }

    pred_vq = FUNC3(s, input_buffer2, len);

    if (pred_vq < 0)
        return -1;

    pg = FUNC2(pred_vq, input_buffer, diff, len);

    // Greater than 10db (10*log(10)) prediction gain to use ADPCM.
    // TODO: Tune it.
    if (pg < 10)
        return -1;

    for (i = 0; i < len; i++)
        diff[i] <<= 7;

    return pred_vq;
}