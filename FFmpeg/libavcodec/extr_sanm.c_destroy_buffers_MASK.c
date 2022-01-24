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
struct TYPE_4__ {scalar_t__ frm2_size; scalar_t__ frm1_size; scalar_t__ frm0_size; int /*<<< orphan*/  rle_buf; int /*<<< orphan*/  stored_frame; int /*<<< orphan*/  frm2; int /*<<< orphan*/  frm1; int /*<<< orphan*/  frm0; } ;
typedef  TYPE_1__ SANMVideoContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(SANMVideoContext *ctx)
{
    FUNC0(&ctx->frm0);
    FUNC0(&ctx->frm1);
    FUNC0(&ctx->frm2);
    FUNC0(&ctx->stored_frame);
    FUNC0(&ctx->rle_buf);
    ctx->frm0_size =
    ctx->frm1_size =
    ctx->frm2_size = 0;
    FUNC1(ctx, 0, 0);
}