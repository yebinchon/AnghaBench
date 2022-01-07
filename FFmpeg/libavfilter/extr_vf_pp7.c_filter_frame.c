
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_20__ {int is_disabled; TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_19__ {int w; int h; TYPE_4__* dst; } ;
struct TYPE_18__ {int * linesize; int * data; int height; int width; } ;
struct TYPE_17__ {scalar_t__ qp; int vsub; int hsub; int qscale_type; } ;
typedef TYPE_1__ PP7Context ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_CEIL_RSHIFT (int,int ) ;
 int ENOMEM ;
 int FFALIGN (int,int) ;
 int av_frame_copy_props (TYPE_2__*,TYPE_2__*) ;
 int av_frame_free (TYPE_2__**) ;
 int * av_frame_get_qp_table (TYPE_2__*,int*,int *) ;
 int av_frame_is_writable (TYPE_2__*) ;
 int av_image_copy_plane (int ,int ,int ,int ,int const,int const) ;
 int emms_c () ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* ff_get_video_buffer (TYPE_3__*,int const,int const) ;
 int filter (TYPE_1__*,int ,int ,int ,int ,int const,int const,int *,int,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    PP7Context *pp7 = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out = in;

    int qp_stride = 0;
    uint8_t *qp_table = ((void*)0);

    if (!pp7->qp)
        qp_table = av_frame_get_qp_table(in, &qp_stride, &pp7->qscale_type);

    if (!ctx->is_disabled) {
        const int cw = AV_CEIL_RSHIFT(inlink->w, pp7->hsub);
        const int ch = AV_CEIL_RSHIFT(inlink->h, pp7->vsub);



        if (!av_frame_is_writable(in) || (inlink->w & 7) || (inlink->h & 7)) {
            const int aligned_w = FFALIGN(inlink->w, 8);
            const int aligned_h = FFALIGN(inlink->h, 8);

            out = ff_get_video_buffer(outlink, aligned_w, aligned_h);
            if (!out) {
                av_frame_free(&in);
                return AVERROR(ENOMEM);
            }
            av_frame_copy_props(out, in);
            out->width = in->width;
            out->height = in->height;
        }

        if (qp_table || pp7->qp) {

            filter(pp7, out->data[0], in->data[0], out->linesize[0], in->linesize[0],
                   inlink->w, inlink->h, qp_table, qp_stride, 1);
            filter(pp7, out->data[1], in->data[1], out->linesize[1], in->linesize[1],
                   cw, ch, qp_table, qp_stride, 0);
            filter(pp7, out->data[2], in->data[2], out->linesize[2], in->linesize[2],
                   cw, ch, qp_table, qp_stride, 0);
            emms_c();
        }
    }

    if (in != out) {
        if (in->data[3])
            av_image_copy_plane(out->data[3], out->linesize[3],
                                in ->data[3], in ->linesize[3],
                                inlink->w, inlink->h);
        av_frame_free(&in);
    }
    return ff_filter_frame(outlink, out);
}
