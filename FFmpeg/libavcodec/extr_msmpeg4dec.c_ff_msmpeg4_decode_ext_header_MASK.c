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
struct TYPE_3__ {int msmpeg4_version; int bit_rate; int /*<<< orphan*/  avctx; scalar_t__ flipflop_rounding; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

int FUNC5(MpegEncContext * s, int buf_size)
{
    int left= buf_size*8 - FUNC3(&s->gb);
    int length= s->msmpeg4_version>=3 ? 17 : 16;
    /* the alt_bitstream reader could read over the end so we need to check it */
    if(left>=length && left<length+8)
    {
        FUNC4(&s->gb, 5); /* fps */
        s->bit_rate= FUNC1(&s->gb, 11)*1024;
        if(s->msmpeg4_version>=3)
            s->flipflop_rounding= FUNC2(&s->gb);
        else
            s->flipflop_rounding= 0;
    }
    else if(left<length+8)
    {
        s->flipflop_rounding= 0;
        if(s->msmpeg4_version != 2)
            FUNC0(s->avctx, AV_LOG_ERROR, "ext header missing, %d left\n", left);
    }
    else
    {
        FUNC0(s->avctx, AV_LOG_ERROR, "I-frame too long, ignoring ext header\n");
    }

    return 0;
}