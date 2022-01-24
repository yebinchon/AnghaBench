#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int gob_number; } ;
struct TYPE_8__ {long long picture_number; scalar_t__ pict_type; scalar_t__ mb_skip_run; int /*<<< orphan*/  pb; int /*<<< orphan*/  height; int /*<<< orphan*/  width; TYPE_2__* avctx; int /*<<< orphan*/  ptr_lastgob; } ;
struct TYPE_6__ {long long num; long long den; } ;
struct TYPE_7__ {TYPE_1__ time_base; } ;
typedef  TYPE_3__ MpegEncContext ;
typedef  TYPE_4__ H261Context ;

/* Variables and functions */
 scalar_t__ AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

void FUNC5(MpegEncContext *s, int picture_number)
{
    H261Context *h = (H261Context *)s;
    int format, temp_ref;

    FUNC0(&s->pb);

    /* Update the pointer to last GOB */
    s->ptr_lastgob = FUNC3(&s->pb);

    FUNC2(&s->pb, 20, 0x10); /* PSC */

    temp_ref = s->picture_number * 30000LL * s->avctx->time_base.num /
               (1001LL * s->avctx->time_base.den);   // FIXME maybe this should use a timestamp
    FUNC4(&s->pb, 5, temp_ref); /* TemporalReference */

    FUNC2(&s->pb, 1, 0); /* split screen off */
    FUNC2(&s->pb, 1, 0); /* camera  off */
    FUNC2(&s->pb, 1, s->pict_type == AV_PICTURE_TYPE_I); /* freeze picture release on/off */

    format = FUNC1(s->width, s->height);

    FUNC2(&s->pb, 1, format); /* 0 == QCIF, 1 == CIF */

    FUNC2(&s->pb, 1, 1); /* still image mode */
    FUNC2(&s->pb, 1, 1); /* reserved */

    FUNC2(&s->pb, 1, 0); /* no PEI */
    if (format == 0)
        h->gob_number = -1;
    else
        h->gob_number = 0;
    s->mb_skip_run = 0;
}