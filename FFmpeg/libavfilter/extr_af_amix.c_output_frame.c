
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {TYPE_2__* priv; } ;
struct TYPE_17__ {TYPE_5__* src; } ;
struct TYPE_16__ {scalar_t__ format; scalar_t__ pts; scalar_t__* extended_data; } ;
struct TYPE_15__ {int* input_state; int nb_inputs; scalar_t__ next_pts; int nb_channels; int * input_scale; TYPE_1__* fdsp; scalar_t__ planar; int * fifos; int frame_list; } ;
struct TYPE_14__ {int (* vector_dmac_scalar ) (double*,double*,int ,int) ;int (* vector_fmac_scalar ) (float*,float*,int ,int) ;} ;
typedef TYPE_2__ MixContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 scalar_t__ AV_NOPTS_VALUE ;
 scalar_t__ AV_SAMPLE_FMT_FLT ;
 scalar_t__ AV_SAMPLE_FMT_FLTP ;
 int ENOMEM ;
 int FFALIGN (int,int) ;
 int FFMIN (int,int) ;
 int INPUT_EOF ;
 int INPUT_ON ;
 int INT_MAX ;
 int av_audio_fifo_read (int ,void**,int) ;
 int av_audio_fifo_size (int ) ;
 int av_frame_free (TYPE_3__**) ;
 int calculate_scales (TYPE_2__*,int) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 TYPE_3__* ff_get_audio_buffer (TYPE_4__*,int) ;
 int ff_outlink_set_status (TYPE_4__*,int ,scalar_t__) ;
 int frame_list_next_frame_size (int ) ;
 scalar_t__ frame_list_next_pts (int ) ;
 int frame_list_remove_samples (int ,int) ;
 int stub1 (float*,float*,int ,int) ;
 int stub2 (double*,double*,int ,int) ;

__attribute__((used)) static int output_frame(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    MixContext *s = ctx->priv;
    AVFrame *out_buf, *in_buf;
    int nb_samples, ns, i;

    if (s->input_state[0] & INPUT_ON) {

        nb_samples = frame_list_next_frame_size(s->frame_list);
        for (i = 1; i < s->nb_inputs; i++) {
            if (s->input_state[i] & INPUT_ON) {
                ns = av_audio_fifo_size(s->fifos[i]);
                if (ns < nb_samples) {
                    if (!(s->input_state[i] & INPUT_EOF))

                        return 0;

                    nb_samples = ns;
                }
            }
        }
    } else {

        nb_samples = INT_MAX;
        for (i = 1; i < s->nb_inputs; i++) {
            if (s->input_state[i] & INPUT_ON) {
                ns = av_audio_fifo_size(s->fifos[i]);
                nb_samples = FFMIN(nb_samples, ns);
            }
        }
        if (nb_samples == INT_MAX) {
            ff_outlink_set_status(outlink, AVERROR_EOF, s->next_pts);
            return 0;
        }
    }

    s->next_pts = frame_list_next_pts(s->frame_list);
    frame_list_remove_samples(s->frame_list, nb_samples);

    calculate_scales(s, nb_samples);

    if (nb_samples == 0)
        return 0;

    out_buf = ff_get_audio_buffer(outlink, nb_samples);
    if (!out_buf)
        return AVERROR(ENOMEM);

    in_buf = ff_get_audio_buffer(outlink, nb_samples);
    if (!in_buf) {
        av_frame_free(&out_buf);
        return AVERROR(ENOMEM);
    }

    for (i = 0; i < s->nb_inputs; i++) {
        if (s->input_state[i] & INPUT_ON) {
            int planes, plane_size, p;

            av_audio_fifo_read(s->fifos[i], (void **)in_buf->extended_data,
                               nb_samples);

            planes = s->planar ? s->nb_channels : 1;
            plane_size = nb_samples * (s->planar ? 1 : s->nb_channels);
            plane_size = FFALIGN(plane_size, 16);

            if (out_buf->format == AV_SAMPLE_FMT_FLT ||
                out_buf->format == AV_SAMPLE_FMT_FLTP) {
                for (p = 0; p < planes; p++) {
                    s->fdsp->vector_fmac_scalar((float *)out_buf->extended_data[p],
                                                (float *) in_buf->extended_data[p],
                                                s->input_scale[i], plane_size);
                }
            } else {
                for (p = 0; p < planes; p++) {
                    s->fdsp->vector_dmac_scalar((double *)out_buf->extended_data[p],
                                                (double *) in_buf->extended_data[p],
                                                s->input_scale[i], plane_size);
                }
            }
        }
    }
    av_frame_free(&in_buf);

    out_buf->pts = s->next_pts;
    if (s->next_pts != AV_NOPTS_VALUE)
        s->next_pts += nb_samples;

    return ff_filter_frame(outlink, out_buf);
}
