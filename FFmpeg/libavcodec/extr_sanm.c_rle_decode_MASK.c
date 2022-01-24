#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ SANMVideoContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC4(SANMVideoContext *ctx, uint8_t *dst, const int out_size)
{
    int opcode, color, run_len, left = out_size;

    while (left > 0) {
        opcode = FUNC1(&ctx->gb);
        run_len = (opcode >> 1) + 1;
        if (run_len > left || FUNC2(&ctx->gb) <= 0)
            return AVERROR_INVALIDDATA;

        if (opcode & 1) {
            color = FUNC1(&ctx->gb);
            FUNC3(dst, color, run_len);
        } else {
            if (FUNC2(&ctx->gb) < run_len)
                return AVERROR_INVALIDDATA;
            FUNC0(&ctx->gb, dst, run_len);
        }

        dst  += run_len;
        left -= run_len;
    }

    return 0;
}