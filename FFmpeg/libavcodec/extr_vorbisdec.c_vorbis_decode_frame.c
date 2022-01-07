
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int audio_channels; int* blocksize; int first_frame; int modes; scalar_t__ channel_residues; int audio_samplerate; int gb; } ;
typedef TYPE_1__ vorbis_context ;
typedef int uint8_t ;
struct TYPE_18__ {int channels; int sample_rate; int channel_layout; TYPE_1__* priv_data; } ;
struct TYPE_17__ {int nb_samples; scalar_t__* extended_data; } ;
struct TYPE_16__ {int* data; int size; } ;
typedef int GetBitContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int av_frame_unref (TYPE_3__*) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int ff_dlog (int *,char*,int,...) ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int** ff_vorbis_channel_layout_offsets ;
 int * ff_vorbis_channel_layouts ;
 int get_bits_count (int *) ;
 int init_get_bits8 (int *,int const*,int) ;
 int vorbis_free (TYPE_1__*) ;
 int vorbis_parse_audio_packet (TYPE_1__*,float**) ;
 int vorbis_parse_id_hdr (TYPE_1__*) ;
 int vorbis_parse_setup_hdr (TYPE_1__*) ;

__attribute__((used)) static int vorbis_decode_frame(AVCodecContext *avctx, void *data,
                               int *got_frame_ptr, AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    vorbis_context *vc = avctx->priv_data;
    AVFrame *frame = data;
    GetBitContext *gb = &vc->gb;
    float *channel_ptrs[255];
    int i, len, ret;

    ff_dlog(((void*)0), "packet length %d \n", buf_size);

    if (*buf == 1 && buf_size > 7) {
        if ((ret = init_get_bits8(gb, buf + 1, buf_size - 1)) < 0)
            return ret;

        vorbis_free(vc);
        if ((ret = vorbis_parse_id_hdr(vc))) {
            av_log(avctx, AV_LOG_ERROR, "Id header corrupt.\n");
            vorbis_free(vc);
            return ret;
        }

        if (vc->audio_channels > 8)
            avctx->channel_layout = 0;
        else
            avctx->channel_layout = ff_vorbis_channel_layouts[vc->audio_channels - 1];

        avctx->channels = vc->audio_channels;
        avctx->sample_rate = vc->audio_samplerate;
        return buf_size;
    }

    if (*buf == 3 && buf_size > 7) {
        av_log(avctx, AV_LOG_DEBUG, "Ignoring comment header\n");
        return buf_size;
    }

    if (*buf == 5 && buf_size > 7 && vc->channel_residues && !vc->modes) {
        if ((ret = init_get_bits8(gb, buf + 1, buf_size - 1)) < 0)
            return ret;

        if ((ret = vorbis_parse_setup_hdr(vc))) {
            av_log(avctx, AV_LOG_ERROR, "Setup header corrupt.\n");
            vorbis_free(vc);
            return ret;
        }
        return buf_size;
    }

    if (!vc->channel_residues || !vc->modes) {
        av_log(avctx, AV_LOG_ERROR, "Data packet before valid headers\n");
        return AVERROR_INVALIDDATA;
    }


    frame->nb_samples = vc->blocksize[1] / 2;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;

    if (vc->audio_channels > 8) {
        for (i = 0; i < vc->audio_channels; i++)
            channel_ptrs[i] = (float *)frame->extended_data[i];
    } else {
        for (i = 0; i < vc->audio_channels; i++) {
            int ch = ff_vorbis_channel_layout_offsets[vc->audio_channels - 1][i];
            channel_ptrs[ch] = (float *)frame->extended_data[i];
        }
    }

    if ((ret = init_get_bits8(gb, buf, buf_size)) < 0)
        return ret;

    if ((len = vorbis_parse_audio_packet(vc, channel_ptrs)) <= 0)
        return len;

    if (!vc->first_frame) {
        vc->first_frame = 1;
        *got_frame_ptr = 0;
        av_frame_unref(frame);
        return buf_size;
    }

    ff_dlog(((void*)0), "parsed %d bytes %d bits, returned %d samples (*ch*bits) \n",
            get_bits_count(gb) / 8, get_bits_count(gb) % 8, len);

    frame->nb_samples = len;
    *got_frame_ptr = 1;

    return buf_size;
}
