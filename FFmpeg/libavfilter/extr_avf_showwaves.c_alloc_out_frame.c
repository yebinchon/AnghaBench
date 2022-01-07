
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int const int16_t ;
struct TYPE_12__ {int w; int h; int channels; int time_base; int sample_rate; } ;
struct TYPE_11__ {int width; int height; int* linesize; scalar_t__* data; scalar_t__ pts; } ;
struct TYPE_10__ {int pixstep; TYPE_2__* outpicref; } ;
typedef TYPE_1__ ShowWavesContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_make_q (int,int ) ;
 scalar_t__ av_rescale_q (int,int ,int ) ;
 TYPE_2__* ff_get_video_buffer (TYPE_3__*,int,int) ;
 int memset (scalar_t__,int ,int) ;

__attribute__((used)) static int alloc_out_frame(ShowWavesContext *showwaves, const int16_t *p,
                           const AVFilterLink *inlink, AVFilterLink *outlink,
                           const AVFrame *in)
{
    if (!showwaves->outpicref) {
        int j;
        AVFrame *out = showwaves->outpicref =
            ff_get_video_buffer(outlink, outlink->w, outlink->h);
        if (!out)
            return AVERROR(ENOMEM);
        out->width = outlink->w;
        out->height = outlink->h;
        out->pts = in->pts + av_rescale_q((p - (int16_t *)in->data[0]) / inlink->channels,
                                          av_make_q(1, inlink->sample_rate),
                                          outlink->time_base);
        for (j = 0; j < outlink->h; j++)
            memset(out->data[0] + j*out->linesize[0], 0, outlink->w * showwaves->pixstep);
    }
    return 0;
}
