#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int audio_channels; int* blocksize; int first_frame; int /*<<< orphan*/  modes; scalar_t__ channel_residues; int /*<<< orphan*/  audio_samplerate; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ vorbis_context ;
typedef  int uint8_t ;
struct TYPE_18__ {int channels; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  channel_layout; TYPE_1__* priv_data; } ;
struct TYPE_17__ {int nb_samples; scalar_t__* extended_data; } ;
struct TYPE_16__ {int* data; int size; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC3 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int** ff_vorbis_channel_layout_offsets ; 
 int /*<<< orphan*/ * ff_vorbis_channel_layouts ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,float**) ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(AVCodecContext *avctx, void *data,
                               int *got_frame_ptr, AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size       = avpkt->size;
    vorbis_context *vc = avctx->priv_data;
    AVFrame *frame     = data;
    GetBitContext *gb = &vc->gb;
    float *channel_ptrs[255];
    int i, len, ret;

    FUNC2(NULL, "packet length %d \n", buf_size);

    if (*buf == 1 && buf_size > 7) {
        if ((ret = FUNC5(gb, buf + 1, buf_size - 1)) < 0)
            return ret;

        FUNC6(vc);
        if ((ret = FUNC8(vc))) {
            FUNC1(avctx, AV_LOG_ERROR, "Id header corrupt.\n");
            FUNC6(vc);
            return ret;
        }

        if (vc->audio_channels > 8)
            avctx->channel_layout = 0;
        else
            avctx->channel_layout = ff_vorbis_channel_layouts[vc->audio_channels - 1];

        avctx->channels    = vc->audio_channels;
        avctx->sample_rate = vc->audio_samplerate;
        return buf_size;
    }

    if (*buf == 3 && buf_size > 7) {
        FUNC1(avctx, AV_LOG_DEBUG, "Ignoring comment header\n");
        return buf_size;
    }

    if (*buf == 5 && buf_size > 7 && vc->channel_residues && !vc->modes) {
        if ((ret = FUNC5(gb, buf + 1, buf_size - 1)) < 0)
            return ret;

        if ((ret = FUNC9(vc))) {
            FUNC1(avctx, AV_LOG_ERROR, "Setup header corrupt.\n");
            FUNC6(vc);
            return ret;
        }
        return buf_size;
    }

    if (!vc->channel_residues || !vc->modes) {
        FUNC1(avctx, AV_LOG_ERROR, "Data packet before valid headers\n");
        return AVERROR_INVALIDDATA;
    }

    /* get output buffer */
    frame->nb_samples = vc->blocksize[1] / 2;
    if ((ret = FUNC3(avctx, frame, 0)) < 0)
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

    if ((ret = FUNC5(gb, buf, buf_size)) < 0)
        return ret;

    if ((len = FUNC7(vc, channel_ptrs)) <= 0)
        return len;

    if (!vc->first_frame) {
        vc->first_frame = 1;
        *got_frame_ptr = 0;
        FUNC0(frame);
        return buf_size;
    }

    FUNC2(NULL, "parsed %d bytes %d bits, returned %d samples (*ch*bits) \n",
            FUNC4(gb) / 8, FUNC4(gb) % 8, len);

    frame->nb_samples = len;
    *got_frame_ptr    = 1;

    return buf_size;
}