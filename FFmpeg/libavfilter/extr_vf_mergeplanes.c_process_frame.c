
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_18__ {int time_base; int pts; } ;
struct TYPE_17__ {TYPE_4__** outputs; } ;
struct TYPE_16__ {int time_base; int h; int w; } ;
struct TYPE_15__ {int * linesize; int * data; int pts; } ;
struct TYPE_14__ {TYPE_1__* opaque; TYPE_5__* parent; } ;
struct TYPE_13__ {int nb_inputs; int nb_planes; int** map; int * planeheight; int * planewidth; TYPE_9__ fs; } ;
typedef TYPE_1__ MergePlanesContext ;
typedef TYPE_2__ FFFrameSync ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_image_copy_plane (int ,int ,int ,int ,int ,int ) ;
 int av_rescale_q (int ,int ,int ) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 int ff_framesync_get_frame (TYPE_9__*,int,TYPE_3__**,int ) ;
 TYPE_3__* ff_get_video_buffer (TYPE_4__*,int ,int ) ;

__attribute__((used)) static int process_frame(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    AVFilterLink *outlink = ctx->outputs[0];
    MergePlanesContext *s = fs->opaque;
    AVFrame *in[4] = { ((void*)0) };
    AVFrame *out;
    int i, ret;

    for (i = 0; i < s->nb_inputs; i++) {
        if ((ret = ff_framesync_get_frame(&s->fs, i, &in[i], 0)) < 0)
            return ret;
    }

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out)
        return AVERROR(ENOMEM);
    out->pts = av_rescale_q(s->fs.pts, s->fs.time_base, outlink->time_base);

    for (i = 0; i < s->nb_planes; i++) {
        const int input = s->map[i][1];
        const int plane = s->map[i][0];

        av_image_copy_plane(out->data[i], out->linesize[i],
                            in[input]->data[plane], in[input]->linesize[plane],
                            s->planewidth[i], s->planeheight[i]);
    }

    return ff_filter_frame(outlink, out);
}
