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
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ trace_enable; int /*<<< orphan*/  log_ctx; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ CodedBitstreamContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char const*,int const*,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(CodedBitstreamContext *ctx, GetBitContext *gbc,
                           uint32_t n, const char *name,
                           const int *subscripts, uint32_t *write_to)
{
    uint32_t m, v, extra_bit, value;
    int position, w;

    FUNC0(n > 0);

    if (ctx->trace_enable)
        position = FUNC6(gbc);

    w = FUNC2(n) + 1;
    m = (1 << w) - n;

    if (FUNC7(gbc) < w) {
        FUNC1(ctx->log_ctx, AV_LOG_ERROR, "Invalid non-symmetric value at "
               "%s: bitstream ended.\n", name);
        return AVERROR_INVALIDDATA;
    }

    if (w - 1 > 0)
        v = FUNC4(gbc, w - 1);
    else
        v = 0;

    if (v < m) {
        value = v;
    } else {
        extra_bit = FUNC5(gbc);
        value = (v << 1) - m + extra_bit;
    }

    if (ctx->trace_enable) {
        char bits[33];
        int i;
        for (i = 0; i < w - 1; i++)
            bits[i] = (v >> i & 1) ? '1' : '0';
        if (v >= m)
            bits[i++] = extra_bit ? '1' : '0';
        bits[i] = 0;

        FUNC3(ctx, position,
                                    name, subscripts, bits, value);
    }

    *write_to = value;
    return 0;
}