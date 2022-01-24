#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  double uint64_t ;
struct TYPE_11__ {TYPE_1__* priv; } ;
struct TYPE_10__ {scalar_t__ height; scalar_t__ width; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_9__ {int nb_planes; double* width; double* height; int bitdepth; double prev_mafd; TYPE_2__* prev_picref; int /*<<< orphan*/  (* sad ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double,double*) ;} ;
typedef  TYPE_1__ SelectContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (double,double) ; 
 double FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 double FUNC5 (double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double,double*) ; 

__attribute__((used)) static double FUNC7(AVFilterContext *ctx, AVFrame *frame)
{
    double ret = 0;
    SelectContext *select = ctx->priv;
    AVFrame *prev_picref = select->prev_picref;

    if (prev_picref &&
        frame->height == prev_picref->height &&
        frame->width  == prev_picref->width) {
        uint64_t sad = 0;
        double mafd, diff;
        uint64_t count = 0;

        for (int plane = 0; plane < select->nb_planes; plane++) {
            uint64_t plane_sad;
            select->sad(prev_picref->data[plane], prev_picref->linesize[plane],
                    frame->data[plane], frame->linesize[plane],
                    select->width[plane], select->height[plane], &plane_sad);
            sad += plane_sad;
            count += select->width[plane] * select->height[plane];
        }

        FUNC4();
        mafd = (double)sad / count / (1ULL << (select->bitdepth - 8));
        diff = FUNC5(mafd - select->prev_mafd);
        ret  = FUNC1(FUNC0(mafd, diff) / 100., 0, 1);
        select->prev_mafd = mafd;
        FUNC3(&prev_picref);
    }
    select->prev_picref = FUNC2(frame);
    return ret;
}