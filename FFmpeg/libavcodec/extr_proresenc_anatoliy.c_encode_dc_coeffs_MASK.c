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
typedef  scalar_t__ int16_t ;
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 size_t FUNC1 (int,int) ; 
 int /*<<< orphan*/  FIRST_DC_CB ; 
 int FUNC2 (int*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * dc_codebook ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(PutBitContext *pb, int16_t *in,
        int blocks_per_slice, int *qmat)
{
    int prev_dc, code;
    int i, sign, idx;
    int new_dc, delta, diff_sign, new_code;

    prev_dc = FUNC2(qmat, 0, in[0] - 16384);
    code = FUNC3(prev_dc);
    FUNC5(pb, code, FIRST_DC_CB);

    code = 5; sign = 0; idx = 64;
    for (i = 1; i < blocks_per_slice; i++, idx += 64) {
        new_dc    = FUNC2(qmat, 0, in[idx] - 16384);
        delta     = new_dc - prev_dc;
        diff_sign = FUNC0(delta, sign);
        new_code  = FUNC4(FUNC6(delta), diff_sign);

        FUNC5(pb, new_code, dc_codebook[FUNC1(code, 6)]);

        code      = new_code;
        sign      = delta >> 31;
        prev_dc   = new_dc;
    }
}