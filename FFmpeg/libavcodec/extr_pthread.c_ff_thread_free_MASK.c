#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int active_thread_type; int /*<<< orphan*/  thread_count; } ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int FF_THREAD_FRAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(AVCodecContext *avctx)
{
    if (avctx->active_thread_type&FF_THREAD_FRAME)
        FUNC0(avctx, avctx->thread_count);
    else
        FUNC1(avctx);
}