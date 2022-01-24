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
struct TYPE_4__ {int mb_x; int mb_y; int mb_width; int quant_precision; int qscale; int /*<<< orphan*/  pb; scalar_t__ mb_num; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

void FUNC3(MpegEncContext *s)
{
    int mb_num_bits = FUNC0(s->mb_num - 1) + 1;

    FUNC2(&s->pb, FUNC1(s), 0);
    FUNC2(&s->pb, 1, 1);

    FUNC2(&s->pb, mb_num_bits, s->mb_x + s->mb_y * s->mb_width);
    FUNC2(&s->pb, s->quant_precision, s->qscale);
    FUNC2(&s->pb, 1, 0); /* no HEC */
}