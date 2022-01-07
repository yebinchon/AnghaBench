
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_10__ ;


typedef int uint16_t ;
struct TYPE_33__ {int dcomp; int bits; int const* bg_color; int max; int ncomp; int pcomp; scalar_t__ display; int size; int filter; int (* graticulef ) (TYPE_6__*,TYPE_8__*) ;scalar_t__ mode; int waveform_slice; TYPE_4__* desc; TYPE_2__* odesc; } ;
typedef TYPE_6__ WaveformContext ;
struct TYPE_34__ {int component; int offset_y; int offset_x; TYPE_8__* out; TYPE_8__* in; } ;
typedef TYPE_7__ ThreadData ;
struct TYPE_36__ {int w; int h; TYPE_10__* dst; } ;
struct TYPE_35__ {int* linesize; scalar_t__* data; int color_range; int pts; } ;
struct TYPE_32__ {int (* execute ) (TYPE_10__*,int ,TYPE_7__*,int *,int ) ;} ;
struct TYPE_31__ {TYPE_3__* comp; } ;
struct TYPE_30__ {int plane; } ;
struct TYPE_29__ {TYPE_1__* comp; } ;
struct TYPE_28__ {size_t plane; } ;
struct TYPE_27__ {TYPE_5__* internal; TYPE_9__** outputs; TYPE_6__* priv; } ;
typedef TYPE_8__ AVFrame ;
typedef TYPE_9__ AVFilterLink ;
typedef TYPE_10__ AVFilterContext ;




 int AVCOL_RANGE_JPEG ;
 int AVERROR (int ) ;


 int ENOMEM ;


 scalar_t__ PARADE ;


 int av_frame_free (TYPE_8__**) ;
 int envelope (TYPE_6__*,TYPE_8__*,int const,int const,int) ;
 int envelope16 (TYPE_6__*,TYPE_8__*,int const,int const,int) ;
 int ff_filter_frame (TYPE_9__*,TYPE_8__*) ;
 int ff_filter_get_nb_threads (TYPE_10__*) ;
 TYPE_8__* ff_get_video_buffer (TYPE_9__*,int,int) ;
 int memset (scalar_t__,int const,int) ;
 int stub1 (TYPE_10__*,int ,TYPE_7__*,int *,int ) ;
 int stub2 (TYPE_6__*,TYPE_8__*) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    WaveformContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out;
    int i, j, k;

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    out->pts = in->pts;
    out->color_range = AVCOL_RANGE_JPEG;

    for (k = 0; k < s->dcomp; k++) {
        if (s->bits <= 8) {
            for (i = 0; i < outlink->h ; i++)
                memset(out->data[s->odesc->comp[k].plane] +
                       i * out->linesize[s->odesc->comp[k].plane],
                       s->bg_color[k], outlink->w);
        } else {
            const int mult = s->max / 256;
            uint16_t *dst = (uint16_t *)out->data[s->odesc->comp[k].plane];

            for (i = 0; i < outlink->h ; i++) {
                for (j = 0; j < outlink->w; j++)
                    dst[j] = s->bg_color[k] * mult;
                dst += out->linesize[s->odesc->comp[k].plane] / 2;
            }
        }
    }

    for (k = 0, i = 0; k < s->ncomp; k++) {
        if ((1 << k) & s->pcomp) {
            const int plane = s->desc->comp[k].plane;
            ThreadData td;
            int offset_y;
            int offset_x;

            if (s->display == PARADE) {
                offset_x = s->mode ? i++ * inlink->w : 0;
                offset_y = s->mode ? 0 : i++ * inlink->h;
            } else {
                offset_y = s->mode ? i++ * s->size * !!s->display : 0;
                offset_x = s->mode ? 0 : i++ * s->size * !!s->display;
            }

            td.in = in;
            td.out = out;
            td.component = k;
            td.offset_y = offset_y;
            td.offset_x = offset_x;
            ctx->internal->execute(ctx, s->waveform_slice, &td, ((void*)0), ff_filter_get_nb_threads(ctx));
            switch (s->filter) {
            case 135:
            case 133:
            case 132:
            case 130:
                if (s->bits <= 8)
                    envelope(s, out, plane, plane, s->mode ? offset_x : offset_y);
                else
                    envelope16(s, out, plane, plane, s->mode ? offset_x : offset_y);
                break;
            case 131:
                if (s->bits <= 8) {
                    envelope(s, out, plane, plane, s->mode ? offset_x : offset_y);
                    envelope(s, out, plane, (plane + 1) % s->ncomp, s->mode ? offset_x : offset_y);
                } else {
                    envelope16(s, out, plane, plane, s->mode ? offset_x : offset_y);
                    envelope16(s, out, plane, (plane + 1) % s->ncomp, s->mode ? offset_x : offset_y);
                }
                break;
            case 134:
            case 129:
            case 128:
                if (s->bits <= 8) {
                    envelope(s, out, plane, (plane + 0) % s->ncomp, s->mode ? offset_x : offset_y);
                    envelope(s, out, plane, (plane + 1) % s->ncomp, s->mode ? offset_x : offset_y);
                    envelope(s, out, plane, (plane + 2) % s->ncomp, s->mode ? offset_x : offset_y);
                } else {
                    envelope16(s, out, plane, (plane + 0) % s->ncomp, s->mode ? offset_x : offset_y);
                    envelope16(s, out, plane, (plane + 1) % s->ncomp, s->mode ? offset_x : offset_y);
                    envelope16(s, out, plane, (plane + 2) % s->ncomp, s->mode ? offset_x : offset_y);
                }
                break;
            }
        }
    }
    s->graticulef(s, out);

    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
