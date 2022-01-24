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
struct TYPE_3__ {int extradata_size; int /*<<< orphan*/  extradata; } ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(AVCodecContext *ctx)
{
    //TODO: this code should set every possible pointer that could be set by codec and is not an option;
    ctx->extradata_size = 8;
    ctx->extradata = FUNC0(ctx->extradata_size);
    return 0;
}