
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_17__ {int non_b_qp_alloc_size; scalar_t__ qp; int * non_b_qp_table; int use_bframe_qp; scalar_t__ log2_count; int qscale_type; } ;
typedef TYPE_1__ USPPContext ;
struct TYPE_20__ {int is_disabled; TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_19__ {int w; int h; TYPE_4__* dst; } ;
struct TYPE_18__ {scalar_t__ pict_type; int * linesize; int * data; int height; int width; } ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_CEIL_RSHIFT (int,int) ;
 scalar_t__ AV_PICTURE_TYPE_B ;
 int ENOMEM ;
 int FFALIGN (int,int) ;
 int av_assert0 (int) ;
 int av_frame_copy_props (TYPE_2__*,TYPE_2__*) ;
 int av_frame_free (TYPE_2__**) ;
 int * av_frame_get_qp_table (TYPE_2__*,int*,int *) ;
 int av_frame_is_writable (TYPE_2__*) ;
 int av_image_copy_plane (int ,int ,int ,int ,int,int) ;
 int av_reallocp_array (int **,int,int) ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* ff_get_video_buffer (TYPE_3__*,int const,int const) ;
 int filter (TYPE_1__*,int *,int *,int *,int *,int,int,int *,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    USPPContext *uspp = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out = in;

    int qp_stride = 0;
    uint8_t *qp_table = ((void*)0);





    if (!uspp->qp) {
        qp_table = av_frame_get_qp_table(in, &qp_stride, &uspp->qscale_type);

        if (qp_table && !uspp->use_bframe_qp && in->pict_type != AV_PICTURE_TYPE_B) {
            int w, h;



            if (!qp_stride) {
                w = AV_CEIL_RSHIFT(inlink->w, 4);
                h = 1;
            } else {
                w = qp_stride;
                h = AV_CEIL_RSHIFT(inlink->h, 4);
            }

            if (w * h > uspp->non_b_qp_alloc_size) {
                int ret = av_reallocp_array(&uspp->non_b_qp_table, w, h);
                if (ret < 0) {
                    uspp->non_b_qp_alloc_size = 0;
                    return ret;
                }
                uspp->non_b_qp_alloc_size = w * h;
            }

            av_assert0(w * h <= uspp->non_b_qp_alloc_size);
            memcpy(uspp->non_b_qp_table, qp_table, w * h);
        }
    }

    if (uspp->log2_count && !ctx->is_disabled) {
        if (!uspp->use_bframe_qp && uspp->non_b_qp_table)
            qp_table = uspp->non_b_qp_table;

        if (qp_table || uspp->qp) {



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

            filter(uspp, out->data, in->data, out->linesize, in->linesize,
                   inlink->w, inlink->h, qp_table, qp_stride);
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
