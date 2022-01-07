
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_11__ {scalar_t__ s_mul; int * source; int * target; } ;
typedef TYPE_3__ ThreadData_blend_frame ;
struct TYPE_12__ {TYPE_1__** outputs; TYPE_2__* internal; } ;
struct TYPE_10__ {int (* execute ) (TYPE_4__*,int ,TYPE_3__*,int *,int ) ;} ;
struct TYPE_9__ {int h; } ;
typedef int AVFrame ;
typedef TYPE_4__ AVFilterContext ;


 int FFMIN (int ,int ) ;
 int blend_frame_partial ;
 int ff_filter_get_nb_threads (TYPE_4__*) ;
 int stub1 (TYPE_4__*,int ,TYPE_3__*,int *,int ) ;

__attribute__((used)) static void blend_frame(AVFilterContext *ctx, AVFrame *target, AVFrame *source, float factor)
{
    ThreadData_blend_frame td;
    td.target = target;
    td.source = source;
    td.s_mul = (uint16_t)(factor * 0x100);
    ctx->internal->execute(ctx, blend_frame_partial, &td, ((void*)0), FFMIN(ctx->outputs[0]->h, ff_filter_get_nb_threads(ctx)));
}
