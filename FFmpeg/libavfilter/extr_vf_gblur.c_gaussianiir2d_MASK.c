#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int width; int height; } ;
typedef  TYPE_2__ ThreadData ;
struct TYPE_16__ {TYPE_1__* internal; TYPE_3__* priv; } ;
struct TYPE_15__ {int* planewidth; int* planeheight; scalar_t__ sigma; scalar_t__ steps; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* execute ) (TYPE_4__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ GBlurContext ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const,int const) ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  filter_horizontally ; 
 int /*<<< orphan*/  filter_postscale ; 
 int /*<<< orphan*/  filter_vertically ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(AVFilterContext *ctx, int plane)
{
    GBlurContext *s = ctx->priv;
    const int width = s->planewidth[plane];
    const int height = s->planeheight[plane];
    const int nb_threads = FUNC1(ctx);
    ThreadData td;

    if (s->sigma <= 0 || s->steps < 0)
        return;

    td.width = width;
    td.height = height;
    ctx->internal->execute(ctx, filter_horizontally, &td, NULL, FUNC0(height, nb_threads));
    ctx->internal->execute(ctx, filter_vertically, &td, NULL, FUNC0(width, nb_threads));
    ctx->internal->execute(ctx, filter_postscale, &td, NULL, FUNC0(width * height, nb_threads));
}