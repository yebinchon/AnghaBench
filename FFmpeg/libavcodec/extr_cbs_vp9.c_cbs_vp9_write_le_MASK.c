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
struct TYPE_4__ {scalar_t__ trace_enable; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ CodedBitstreamContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char const*,int const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(CodedBitstreamContext *ctx, PutBitContext *pbc,
                            int width, const char *name,
                            const int *subscripts, uint32_t value)
{
    int b;

    FUNC1(width % 8 == 0);

    if (FUNC5(pbc) < width)
        return FUNC0(ENOSPC);

    if (ctx->trace_enable) {
        char bits[33];
        int i;
        for (b = 0; b < width; b += 8)
            for (i = 0; i < 8; i++)
                bits[b + i] = value >> (b + i) & 1 ? '1' : '0';
        bits[b] = 0;

        FUNC2(ctx, FUNC4(pbc),
                                    name, subscripts, bits, value);
    }

    for (b = 0; b < width; b += 8)
        FUNC3(pbc, 8, value >> b & 0xff);

    return 0;
}