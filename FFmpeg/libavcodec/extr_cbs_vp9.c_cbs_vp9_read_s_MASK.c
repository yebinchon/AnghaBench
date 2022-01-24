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
struct TYPE_4__ {scalar_t__ trace_enable; int /*<<< orphan*/  log_ctx; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ CodedBitstreamContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,char const*,int const*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(CodedBitstreamContext *ctx, GetBitContext *gbc,
                          int width, const char *name,
                          const int *subscripts, int32_t *write_to)
{
    uint32_t magnitude;
    int position, sign;
    int32_t value;

    if (ctx->trace_enable)
        position = FUNC4(gbc);

    if (FUNC5(gbc) < width + 1) {
        FUNC0(ctx->log_ctx, AV_LOG_ERROR, "Invalid signed value at "
               "%s: bitstream ended.\n", name);
        return AVERROR_INVALIDDATA;
    }

    magnitude = FUNC2(gbc, width);
    sign      = FUNC3(gbc);
    value     = sign ? -(int32_t)magnitude : magnitude;

    if (ctx->trace_enable) {
        char bits[33];
        int i;
        for (i = 0; i < width; i++)
            bits[i] = magnitude >> (width - i - 1) & 1 ? '1' : '0';
        bits[i] = sign ? '1' : '0';
        bits[i + 1] = 0;

        FUNC1(ctx, position, name, subscripts,
                                    bits, value);
    }

    *write_to = value;
    return 0;
}