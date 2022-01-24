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
struct TYPE_3__ {int /*<<< orphan*/  ticks_per_frame; int /*<<< orphan*/  time_base; } ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ,int) ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static double FUNC2(AVCodecContext *avctx)
{
    return 1.0 / FUNC1(avctx->time_base) / FUNC0(avctx->ticks_per_frame, 1);
}