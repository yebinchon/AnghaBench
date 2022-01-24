#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* avctx; int /*<<< orphan*/  pkt_serial; } ;
struct TYPE_9__ {int /*<<< orphan*/  subpq; TYPE_5__ subdec; } ;
typedef  TYPE_2__ VideoState ;
struct TYPE_12__ {scalar_t__ format; double pts; } ;
struct TYPE_10__ {double pts; TYPE_6__ sub; scalar_t__ uploaded; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  serial; } ;
struct TYPE_8__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_3__ Frame ;

/* Variables and functions */
 double AV_NOPTS_VALUE ; 
 scalar_t__ AV_TIME_BASE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int FUNC1 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_6__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void *arg)
{
    VideoState *is = arg;
    Frame *sp;
    int got_subtitle;
    double pts;

    for (;;) {
        if (!(sp = FUNC2(&is->subpq)))
            return 0;

        if ((got_subtitle = FUNC1(&is->subdec, NULL, &sp->sub)) < 0)
            break;

        pts = 0;

        if (got_subtitle && sp->sub.format == 0) {
            if (sp->sub.pts != AV_NOPTS_VALUE)
                pts = sp->sub.pts / (double)AV_TIME_BASE;
            sp->pts = pts;
            sp->serial = is->subdec.pkt_serial;
            sp->width = is->subdec.avctx->width;
            sp->height = is->subdec.avctx->height;
            sp->uploaded = 0;

            /* now we can update the picture count */
            FUNC3(&is->subpq);
        } else if (got_subtitle) {
            FUNC0(&sp->sub);
        }
    }
    return 0;
}