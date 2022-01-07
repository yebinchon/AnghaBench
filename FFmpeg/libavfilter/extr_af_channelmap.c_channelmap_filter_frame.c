
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int source_planes ;
struct TYPE_15__ {TYPE_2__* priv; TYPE_4__** outputs; } ;
struct TYPE_14__ {int channels; int channel_layout; TYPE_5__* dst; } ;
struct TYPE_13__ {int channels; int channel_layout; int ** data; int ** extended_data; } ;
struct TYPE_12__ {int nch; TYPE_1__* map; } ;
struct TYPE_11__ {size_t out_channel_idx; size_t in_channel_idx; } ;
typedef TYPE_2__ ChannelMapContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMIN (int const,int const) ;
 int const FF_ARRAY_ELEMS (int **) ;
 int MAX_CH ;
 int av_frame_free (TYPE_3__**) ;
 int av_free (int **) ;
 int ** av_mallocz_array (int const,int) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 int memcpy (int **,int **,int const) ;

__attribute__((used)) static int channelmap_filter_frame(AVFilterLink *inlink, AVFrame *buf)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    const ChannelMapContext *s = ctx->priv;
    const int nch_in = inlink->channels;
    const int nch_out = s->nch;
    int ch;
    uint8_t *source_planes[MAX_CH];

    memcpy(source_planes, buf->extended_data,
           nch_in * sizeof(source_planes[0]));

    if (nch_out > nch_in) {
        if (nch_out > FF_ARRAY_ELEMS(buf->data)) {
            uint8_t **new_extended_data =
                av_mallocz_array(nch_out, sizeof(*buf->extended_data));
            if (!new_extended_data) {
                av_frame_free(&buf);
                return AVERROR(ENOMEM);
            }
            if (buf->extended_data == buf->data) {
                buf->extended_data = new_extended_data;
            } else {
                av_free(buf->extended_data);
                buf->extended_data = new_extended_data;
            }
        } else if (buf->extended_data != buf->data) {
            av_free(buf->extended_data);
            buf->extended_data = buf->data;
        }
    }

    for (ch = 0; ch < nch_out; ch++) {
        buf->extended_data[s->map[ch].out_channel_idx] =
            source_planes[s->map[ch].in_channel_idx];
    }

    if (buf->data != buf->extended_data)
        memcpy(buf->data, buf->extended_data,
           FFMIN(FF_ARRAY_ELEMS(buf->data), nch_out) * sizeof(buf->data[0]));

    buf->channel_layout = outlink->channel_layout;
    buf->channels = outlink->channels;

    return ff_filter_frame(outlink, buf);
}
