#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  avctx; } ;
struct TYPE_5__ {TYPE_1__ m; } ;
typedef  TYPE_1__ MpegEncContext ;
typedef  TYPE_2__ Mpeg4DecContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(Mpeg4DecContext *ctx, GetBitContext *gb)
{
    MpegEncContext *s = &ctx->m;

    FUNC1(gb, 16); /* Time_code[63..48] */
    FUNC0(s->avctx, gb, "after Time_code[63..48]");
    FUNC1(gb, 16); /* Time_code[47..32] */
    FUNC0(s->avctx, gb, "after Time_code[47..32]");
    FUNC1(gb, 16); /* Time_code[31..16] */
    FUNC0(s->avctx, gb, "after Time_code[31..16]");
    FUNC1(gb, 16); /* Time_code[15..0] */
    FUNC0(s->avctx, gb, "after Time_code[15..0]");
    FUNC1(gb, 4); /* reserved_bits */
}