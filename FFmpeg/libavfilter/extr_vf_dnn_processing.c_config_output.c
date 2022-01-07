
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int height; int width; } ;
struct TYPE_11__ {TYPE_2__* priv; } ;
struct TYPE_10__ {int h; int w; TYPE_4__* src; } ;
struct TYPE_9__ {TYPE_5__ output; int model; TYPE_1__* dnn_module; } ;
struct TYPE_8__ {scalar_t__ (* execute_model ) (int ,TYPE_5__*,int) ;} ;
typedef TYPE_2__ DnnProcessingContext ;
typedef scalar_t__ DNNReturnType ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 scalar_t__ DNN_SUCCESS ;
 int EIO ;
 int av_log (TYPE_2__*,int ,char*) ;
 scalar_t__ stub1 (int ,TYPE_5__*,int) ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *context = outlink->src;
    DnnProcessingContext *ctx = context->priv;
    DNNReturnType result;


    result = (ctx->dnn_module->execute_model)(ctx->model, &ctx->output, 1);
    if (result != DNN_SUCCESS){
        av_log(ctx, AV_LOG_ERROR, "failed to execute model\n");
        return AVERROR(EIO);
    }

    outlink->w = ctx->output.width;
    outlink->h = ctx->output.height;

    return 0;
}
