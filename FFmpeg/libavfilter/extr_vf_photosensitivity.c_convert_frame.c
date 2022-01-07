
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int skip; int * out; int * in; } ;
typedef TYPE_2__ ThreadData_convert_frame ;
struct TYPE_10__ {TYPE_1__* internal; } ;
struct TYPE_8__ {int (* execute ) (TYPE_3__*,int ,TYPE_2__*,int *,int ) ;} ;
typedef int PhotosensitivityFrame ;
typedef int AVFrame ;
typedef TYPE_3__ AVFilterContext ;


 int FFMIN (int ,int ) ;
 int NUM_CELLS ;
 int convert_frame_partial ;
 int ff_filter_get_nb_threads (TYPE_3__*) ;
 int stub1 (TYPE_3__*,int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static void convert_frame(AVFilterContext *ctx, AVFrame *in, PhotosensitivityFrame *out, int skip)
{
    ThreadData_convert_frame td;
    td.in = in;
    td.out = out;
    td.skip = skip;
    ctx->internal->execute(ctx, convert_frame_partial, &td, ((void*)0), FFMIN(NUM_CELLS, ff_filter_get_nb_threads(ctx)));
}
