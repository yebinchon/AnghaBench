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
struct TYPE_8__ {int nb_inputs; int /*<<< orphan*/ * inputs; } ;
struct TYPE_7__ {TYPE_1__* opaque; TYPE_3__* parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  qsv; } ;
typedef  TYPE_1__ QSVOverlayContext ;
typedef  TYPE_2__ FFFrameSync ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(FFFrameSync *fs)
{
    AVFilterContext  *ctx = fs->parent;
    QSVOverlayContext  *s = fs->opaque;
    AVFrame        *frame = NULL;
    int               ret = 0, i;

    for (i = 0; i < ctx->nb_inputs; i++) {
        ret = FUNC1(fs, i, &frame, 0);
        if (ret == 0)
            ret = FUNC2(s->qsv, ctx->inputs[i], frame);
        if (ret < 0 && ret != FUNC0(EAGAIN))
            break;
    }

    return ret;
}