
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * inputs; TYPE_1__* priv; } ;
struct TYPE_7__ {TYPE_3__* src; } ;
struct TYPE_6__ {scalar_t__ eof_left; scalar_t__ S; scalar_t__ K; int H; int fifo; } ;
typedef TYPE_1__ AudioNLMeansContext ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int ENOMEM ;
 scalar_t__ av_audio_fifo_size (int ) ;
 int * ff_get_audio_buffer (TYPE_2__*,int ) ;
 int ff_request_frame (int ) ;
 int filter_frame (int ,int *) ;

__attribute__((used)) static int request_frame(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AudioNLMeansContext *s = ctx->priv;
    int ret;

    ret = ff_request_frame(ctx->inputs[0]);

    if (ret == AVERROR_EOF && s->eof_left != 0) {
        AVFrame *in;

        if (s->eof_left < 0)
            s->eof_left = av_audio_fifo_size(s->fifo) - (s->S + s->K);
        if (s->eof_left <= 0)
            return AVERROR_EOF;
        in = ff_get_audio_buffer(outlink, s->H);
        if (!in)
            return AVERROR(ENOMEM);

        return filter_frame(ctx->inputs[0], in);
    }

    return ret;
}
