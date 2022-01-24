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
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 size_t* ff_zigzag_direct ; 
 size_t* ff_zigzag_scan ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,size_t const*,int) ; 

__attribute__((used)) static int FUNC4(GetBitContext *gb, uint8_t *factors, int size,
                                const uint8_t *jvt_list,
                                const uint8_t *fallback_list)
{
    int i, last = 8, next = 8;
    const uint8_t *scan = size == 16 ? ff_zigzag_scan : ff_zigzag_direct;
    if (!FUNC1(gb)) /* matrix not written, we use the predicted one */
        FUNC3(factors, fallback_list, size * sizeof(uint8_t));
    else
        for (i = 0; i < size; i++) {
            if (next) {
                int v = FUNC2(gb);
                if (v < -128 || v > 127) {
                    FUNC0(NULL, AV_LOG_ERROR, "delta scale %d is invalid\n", v);
                    return AVERROR_INVALIDDATA;
                }
                next = (last + v) & 0xff;
            }
            if (!i && !next) { /* matrix not written, we use the preset one */
                FUNC3(factors, jvt_list, size * sizeof(uint8_t));
                break;
            }
            last = factors[scan[i]] = next ? next : last;
        }
    return 0;
}