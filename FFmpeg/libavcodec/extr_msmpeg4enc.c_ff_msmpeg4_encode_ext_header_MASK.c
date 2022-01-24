#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int bit_rate; int msmpeg4_version; scalar_t__ flipflop_rounding; int /*<<< orphan*/  pb; TYPE_1__* avctx; } ;
struct TYPE_6__ {unsigned int den; unsigned int num; } ;
struct TYPE_5__ {int /*<<< orphan*/  ticks_per_frame; TYPE_2__ time_base; } ;
typedef  TYPE_3__ MpegEncContext ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__) ; 

void FUNC4(MpegEncContext * s)
{
        unsigned fps = s->avctx->time_base.den / s->avctx->time_base.num / FUNC0(s->avctx->ticks_per_frame, 1);
        FUNC3(&s->pb, 5, FUNC1(fps, 31)); //yes 29.97 -> 29

        FUNC3(&s->pb, 11, FUNC1(s->bit_rate/1024, 2047));

        if(s->msmpeg4_version>=3)
            FUNC3(&s->pb, 1, s->flipflop_rounding);
        else
            FUNC2(s->flipflop_rounding==0);
}