
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int channels; } ;
struct TYPE_14__ {TYPE_2__* priv; TYPE_3__** outputs; } ;
struct TYPE_13__ {int h; int w; TYPE_4__* dst; } ;
struct TYPE_12__ {TYPE_5__ output; int model; TYPE_1__* dnn_module; int input; } ;
struct TYPE_11__ {scalar_t__ (* execute_model ) (int ,TYPE_5__*,int) ;} ;
typedef TYPE_2__ DnnProcessingContext ;
typedef scalar_t__ DNNReturnType ;
typedef int AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 scalar_t__ DNN_SUCCESS ;
 int EIO ;
 int ENOMEM ;
 int av_assert0 (int) ;
 int av_frame_copy_props (int *,int *) ;
 int av_frame_free (int **) ;
 int av_log (TYPE_2__*,int ,char*) ;
 int copy_from_dnn_to_frame (int *,TYPE_5__*) ;
 int copy_from_frame_to_dnn (int *,int *) ;
 int ff_filter_frame (TYPE_3__*,int *) ;
 int * ff_get_video_buffer (TYPE_3__*,int ,int ) ;
 scalar_t__ stub1 (int ,TYPE_5__*,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *context = inlink->dst;
    AVFilterLink *outlink = context->outputs[0];
    DnnProcessingContext *ctx = context->priv;
    DNNReturnType dnn_result;
    AVFrame *out;

    copy_from_frame_to_dnn(&ctx->input, in);

    dnn_result = (ctx->dnn_module->execute_model)(ctx->model, &ctx->output, 1);
    if (dnn_result != DNN_SUCCESS){
        av_log(ctx, AV_LOG_ERROR, "failed to execute model\n");
        av_frame_free(&in);
        return AVERROR(EIO);
    }
    av_assert0(ctx->output.channels == 3);

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }

    av_frame_copy_props(out, in);
    copy_from_dnn_to_frame(out, &ctx->output);
    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
