
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int width; int height; int channels; scalar_t__ dt; } ;
struct TYPE_14__ {TYPE_2__* priv; } ;
struct TYPE_13__ {int h; int w; TYPE_5__* dst; } ;
struct TYPE_12__ {int height; int width; int channels; scalar_t__ dt; } ;
struct TYPE_11__ {int model_outputname; int model_inputname; TYPE_6__ input; TYPE_1__* model; } ;
struct TYPE_10__ {scalar_t__ (* get_input ) (int ,TYPE_3__*,int ) ;scalar_t__ (* set_input_output ) (int ,TYPE_6__*,int ,char const**,int) ;int model; } ;
typedef TYPE_2__ DnnProcessingContext ;
typedef scalar_t__ DNNReturnType ;
typedef TYPE_3__ DNNData ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 scalar_t__ DNN_FLOAT ;
 scalar_t__ DNN_SUCCESS ;
 scalar_t__ DNN_UINT8 ;
 int EIO ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 scalar_t__ stub1 (int ,TYPE_3__*,int ) ;
 scalar_t__ stub2 (int ,TYPE_6__*,int ,char const**,int) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *context = inlink->dst;
    DnnProcessingContext *ctx = context->priv;
    DNNReturnType result;
    DNNData dnn_data;

    result = ctx->model->get_input(ctx->model->model, &dnn_data, ctx->model_inputname);
    if (result != DNN_SUCCESS) {
        av_log(ctx, AV_LOG_ERROR, "could not get input from the model\n");
        return AVERROR(EIO);
    }


    if (dnn_data.height != -1 && dnn_data.height != inlink->h) {
        av_log(ctx, AV_LOG_ERROR, "the model requires frame height %d but got %d\n",
                                   dnn_data.height, inlink->h);
        return AVERROR(EIO);
    }
    if (dnn_data.width != -1 && dnn_data.width != inlink->w) {
        av_log(ctx, AV_LOG_ERROR, "the model requires frame width %d but got %d\n",
                                   dnn_data.width, inlink->w);
        return AVERROR(EIO);
    }

    if (dnn_data.channels != 3) {
        av_log(ctx, AV_LOG_ERROR, "the model requires input channels %d\n",
                                   dnn_data.channels);
        return AVERROR(EIO);
    }
    if (dnn_data.dt != DNN_FLOAT && dnn_data.dt != DNN_UINT8) {
        av_log(ctx, AV_LOG_ERROR, "only support dnn models with input data type as float32 and uint8.\n");
        return AVERROR(EIO);
    }

    ctx->input.width = inlink->w;
    ctx->input.height = inlink->h;
    ctx->input.channels = dnn_data.channels;
    ctx->input.dt = dnn_data.dt;

    result = (ctx->model->set_input_output)(ctx->model->model,
                                        &ctx->input, ctx->model_inputname,
                                        (const char **)&ctx->model_outputname, 1);
    if (result != DNN_SUCCESS) {
        av_log(ctx, AV_LOG_ERROR, "could not set input and output for the model\n");
        return AVERROR(EIO);
    }

    return 0;
}
