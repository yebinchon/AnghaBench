#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int int16_t ;
struct TYPE_7__ {int* permutated; } ;
struct TYPE_8__ {int* last_dc; int /*<<< orphan*/  gb; TYPE_2__ scantable; int /*<<< orphan*/  avctx; TYPE_1__** vlcs; } ;
struct TYPE_6__ {int /*<<< orphan*/  table; } ;
typedef  TYPE_3__ MJpegDecodeContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int MIN_CACHE_BITS ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  re ; 

__attribute__((used)) static int FUNC10(MJpegDecodeContext *s, int16_t *block, int component,
                        int dc_index, int ac_index, uint16_t *quant_matrix)
{
    int code, i, j, level, val;

    /* DC coef */
    val = FUNC9(s, dc_index);
    if (val == 0xfffff) {
        FUNC8(s->avctx, AV_LOG_ERROR, "error dc\n");
        return AVERROR_INVALIDDATA;
    }
    val = val * (unsigned)quant_matrix[0] + s->last_dc[component];
    val = FUNC7(val);
    s->last_dc[component] = val;
    block[0] = val;
    /* AC coefs */
    i = 0;
    {FUNC5(re, &s->gb);
    do {
        FUNC6(re, &s->gb);
        FUNC2(code, re, &s->gb, s->vlcs[1][ac_index].table, 9, 2);

        i += ((unsigned)code) >> 4;
            code &= 0xf;
        if (code) {
            if (code > MIN_CACHE_BITS - 16)
                FUNC6(re, &s->gb);

            {
                int cache = FUNC1(re, &s->gb);
                int sign  = (~cache) >> 31;
                level     = (FUNC4(sign ^ cache,code) ^ sign) - sign;
            }

            FUNC3(re, &s->gb, code);

            if (i > 63) {
                FUNC8(s->avctx, AV_LOG_ERROR, "error count: %d\n", i);
                return AVERROR_INVALIDDATA;
            }
            j        = s->scantable.permutated[i];
            block[j] = level * quant_matrix[i];
        }
    } while (i < 63);
    FUNC0(re, &s->gb);}

    return 0;
}