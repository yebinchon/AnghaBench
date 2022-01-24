#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int int32_t ;
struct TYPE_4__ {scalar_t__ trace_enable; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ CodedBitstreamContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char const*,int const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(CodedBitstreamContext *ctx, PutBitContext *pbc,
                           int width, const char *name,
                           const int *subscripts, int32_t value)
{
    uint32_t magnitude;
    int sign;

    if (FUNC4(pbc) < width + 1)
        return FUNC0(ENOSPC);

    sign      = value < 0;
    magnitude = sign ? -value : value;

    if (ctx->trace_enable) {
        char bits[33];
        int i;
        for (i = 0; i < width; i++)
            bits[i] = magnitude >> (width - i - 1) & 1 ? '1' : '0';
        bits[i] = sign ? '1' : '0';
        bits[i + 1] = 0;

        FUNC1(ctx, FUNC3(pbc),
                                    name, subscripts, bits, value);
    }

    FUNC2(pbc, width, magnitude);
    FUNC2(pbc, 1, sign);

    return 0;
}