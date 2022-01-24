#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ pict_type; TYPE_2__* avctx; int /*<<< orphan*/  time; int /*<<< orphan*/  time_base; int /*<<< orphan*/  last_time_base; } ;
struct TYPE_6__ {int /*<<< orphan*/  den; } ;
struct TYPE_7__ {TYPE_1__ time_base; } ;
typedef  TYPE_3__ MpegEncContext ;

/* Variables and functions */
 scalar_t__ AV_PICTURE_TYPE_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

void FUNC2(MpegEncContext *s)
{
    if (s->pict_type == AV_PICTURE_TYPE_B) {
        FUNC1(s);
    } else {
        s->last_time_base = s->time_base;
        s->time_base      = FUNC0(s->time, s->avctx->time_base.den);
    }
}