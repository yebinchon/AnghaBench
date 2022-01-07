
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int width; int height; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_16__ {TYPE_1__* internal; TYPE_3__* priv; } ;
struct TYPE_15__ {int* planewidth; int* planeheight; scalar_t__ sigma; scalar_t__ steps; } ;
struct TYPE_13__ {int (* execute ) (TYPE_4__*,int ,TYPE_2__*,int *,int ) ;} ;
typedef TYPE_3__ GBlurContext ;
typedef TYPE_4__ AVFilterContext ;


 int FFMIN (int const,int const) ;
 int ff_filter_get_nb_threads (TYPE_4__*) ;
 int filter_horizontally ;
 int filter_postscale ;
 int filter_vertically ;
 int stub1 (TYPE_4__*,int ,TYPE_2__*,int *,int ) ;
 int stub2 (TYPE_4__*,int ,TYPE_2__*,int *,int ) ;
 int stub3 (TYPE_4__*,int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static void gaussianiir2d(AVFilterContext *ctx, int plane)
{
    GBlurContext *s = ctx->priv;
    const int width = s->planewidth[plane];
    const int height = s->planeheight[plane];
    const int nb_threads = ff_filter_get_nb_threads(ctx);
    ThreadData td;

    if (s->sigma <= 0 || s->steps < 0)
        return;

    td.width = width;
    td.height = height;
    ctx->internal->execute(ctx, filter_horizontally, &td, ((void*)0), FFMIN(height, nb_threads));
    ctx->internal->execute(ctx, filter_vertically, &td, ((void*)0), FFMIN(width, nb_threads));
    ctx->internal->execute(ctx, filter_postscale, &td, ((void*)0), FFMIN(width * height, nb_threads));
}
