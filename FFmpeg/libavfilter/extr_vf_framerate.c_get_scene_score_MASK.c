#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {double height; double width; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_8__ {int bitdepth; double prev_mafd; int /*<<< orphan*/  (* sad ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double,scalar_t__*) ;} ;
typedef  TYPE_1__ FrameRateContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double,double) ; 
 double FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 double FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double,scalar_t__*) ; 

__attribute__((used)) static double FUNC6(AVFilterContext *ctx, AVFrame *crnt, AVFrame *next)
{
    FrameRateContext *s = ctx->priv;
    double ret = 0;

    FUNC4(ctx, "get_scene_score()\n");

    if (crnt->height == next->height &&
        crnt->width  == next->width) {
        uint64_t sad;
        double mafd, diff;

        FUNC4(ctx, "get_scene_score() process\n");
        s->sad(crnt->data[0], crnt->linesize[0], next->data[0], next->linesize[0], crnt->width, crnt->height, &sad);
        FUNC2();
        mafd = (double)sad * 100.0 / (crnt->width * crnt->height) / (1 << s->bitdepth);
        diff = FUNC3(mafd - s->prev_mafd);
        ret  = FUNC1(FUNC0(mafd, diff), 0, 100.0);
        s->prev_mafd = mafd;
    }
    FUNC4(ctx, "get_scene_score() result is:%f\n", ret);
    return ret;
}