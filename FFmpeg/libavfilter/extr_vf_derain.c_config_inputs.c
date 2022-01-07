
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int channels; int height; int width; } ;
struct TYPE_11__ {TYPE_2__* priv; } ;
struct TYPE_10__ {int h; int w; TYPE_4__* dst; } ;
struct TYPE_9__ {TYPE_5__ input; TYPE_1__* model; } ;
struct TYPE_8__ {scalar_t__ (* set_input_output ) (int ,TYPE_5__*,char*,char const**,int) ;int model; } ;
typedef TYPE_2__ DRContext ;
typedef scalar_t__ DNNReturnType ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 scalar_t__ DNN_SUCCESS ;
 int EIO ;
 int av_log (TYPE_4__*,int ,char*) ;
 scalar_t__ stub1 (int ,TYPE_5__*,char*,char const**,int) ;

__attribute__((used)) static int config_inputs(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    DRContext *dr_context = ctx->priv;
    const char *model_output_name = "y";
    DNNReturnType result;

    dr_context->input.width = inlink->w;
    dr_context->input.height = inlink->h;
    dr_context->input.channels = 3;

    result = (dr_context->model->set_input_output)(dr_context->model->model, &dr_context->input, "x", &model_output_name, 1);
    if (result != DNN_SUCCESS) {
        av_log(ctx, AV_LOG_ERROR, "could not set input and output for the model\n");
        return AVERROR(EIO);
    }

    return 0;
}
