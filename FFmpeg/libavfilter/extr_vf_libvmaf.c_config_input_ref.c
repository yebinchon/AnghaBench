
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__** inputs; TYPE_2__* priv; } ;
struct TYPE_9__ {int format; TYPE_4__* dst; } ;
struct TYPE_8__ {scalar_t__ width; scalar_t__ height; int vmaf_thread_created; int vmaf_thread; int desc; } ;
struct TYPE_7__ {scalar_t__ w; scalar_t__ h; scalar_t__ format; } ;
typedef TYPE_2__ LIBVMAFContext ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_4__*,int ,char*) ;
 int av_pix_fmt_desc_get (int ) ;
 int call_vmaf ;
 int pthread_create (int *,int *,int ,void*) ;

__attribute__((used)) static int config_input_ref(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    LIBVMAFContext *s = ctx->priv;
    int th;

    if (ctx->inputs[0]->w != ctx->inputs[1]->w ||
        ctx->inputs[0]->h != ctx->inputs[1]->h) {
        av_log(ctx, AV_LOG_ERROR, "Width and height of input videos must be same.\n");
        return AVERROR(EINVAL);
    }
    if (ctx->inputs[0]->format != ctx->inputs[1]->format) {
        av_log(ctx, AV_LOG_ERROR, "Inputs must be of same pixel format.\n");
        return AVERROR(EINVAL);
    }

    s->desc = av_pix_fmt_desc_get(inlink->format);
    s->width = ctx->inputs[0]->w;
    s->height = ctx->inputs[0]->h;

    th = pthread_create(&s->vmaf_thread, ((void*)0), call_vmaf, (void *) s);
    if (th) {
        av_log(ctx, AV_LOG_ERROR, "Thread creation failed.\n");
        return AVERROR(EINVAL);
    }
    s->vmaf_thread_created = 1;

    return 0;
}
