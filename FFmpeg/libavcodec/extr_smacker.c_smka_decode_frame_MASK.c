#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_14__ {scalar_t__ table; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ VLC ;
struct TYPE_18__ {int channels; scalar_t__ sample_fmt; } ;
struct TYPE_17__ {int nb_samples; int /*<<< orphan*/ ** data; } ;
struct TYPE_16__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_15__ {int length; int current; int* bits; int* lengths; int* values; scalar_t__ maxlength; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ HuffContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ AV_SAMPLE_FMT_U8 ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  INIT_VLC_LE ; 
 int /*<<< orphan*/  SMKTREE_BITS ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int,int*,int,int,int*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(AVCodecContext *avctx, void *data,
                             int *got_frame_ptr, AVPacket *avpkt)
{
    AVFrame *frame     = data;
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    GetBitContext gb;
    HuffContext h[4] = { { 0 } };
    VLC vlc[4]       = { { 0 } };
    int16_t *samples;
    uint8_t *samples8;
    int val;
    int i, res, ret;
    int unp_size;
    int bits, stereo;
    int pred[2] = {0, 0};

    if (buf_size <= 4) {
        FUNC4(avctx, AV_LOG_ERROR, "packet is too small\n");
        return AVERROR_INVALIDDATA;
    }

    unp_size = FUNC1(buf);

    if (unp_size > (1U<<24)) {
        FUNC4(avctx, AV_LOG_ERROR, "packet is too big\n");
        return AVERROR_INVALIDDATA;
    }

    if ((ret = FUNC12(&gb, buf + 4, buf_size - 4)) < 0)
        return ret;

    if(!FUNC9(&gb)){
        FUNC4(avctx, AV_LOG_INFO, "Sound: no data\n");
        *got_frame_ptr = 0;
        return 1;
    }
    stereo = FUNC9(&gb);
    bits = FUNC9(&gb);
    if (stereo ^ (avctx->channels != 1)) {
        FUNC4(avctx, AV_LOG_ERROR, "channels mismatch\n");
        return AVERROR_INVALIDDATA;
    }
    if (bits == (avctx->sample_fmt == AV_SAMPLE_FMT_U8)) {
        FUNC4(avctx, AV_LOG_ERROR, "sample format mismatch\n");
        return AVERROR_INVALIDDATA;
    }

    /* get output buffer */
    frame->nb_samples = unp_size / (avctx->channels * (bits + 1));
    if (unp_size % (avctx->channels * (bits + 1))) {
        FUNC4(avctx, AV_LOG_ERROR,
               "The buffer does not contain an integer number of samples\n");
        return AVERROR_INVALIDDATA;
    }
    if ((ret = FUNC7(avctx, frame, 0)) < 0)
        return ret;
    samples  = (int16_t *)frame->data[0];
    samples8 =            frame->data[0];

    // Initialize
    for(i = 0; i < (1 << (bits + stereo)); i++) {
        h[i].length = 256;
        h[i].maxlength = 0;
        h[i].current = 0;
        h[i].bits = FUNC5(256 * 4);
        h[i].lengths = FUNC5(256 * sizeof(int));
        h[i].values = FUNC5(256 * sizeof(int));
        if (!h[i].bits || !h[i].lengths || !h[i].values) {
            ret = FUNC0(ENOMEM);
            goto error;
        }
        FUNC15(&gb);
        if (FUNC16(&gb, &h[i], 0, 0) < 0) {
            ret = AVERROR_INVALIDDATA;
            goto error;
        }
        FUNC15(&gb);
        if(h[i].current > 1) {
            res = FUNC13(&vlc[i], SMKTREE_BITS, h[i].length,
                    h[i].lengths, sizeof(int), sizeof(int),
                    h[i].bits, sizeof(uint32_t), sizeof(uint32_t), INIT_VLC_LE);
            if(res < 0) {
                FUNC4(avctx, AV_LOG_ERROR, "Cannot build VLC table\n");
                ret = AVERROR_INVALIDDATA;
                goto error;
            }
        }
    }
    /* this codec relies on wraparound instead of clipping audio */
    if(bits) { //decode 16-bit data
        for(i = stereo; i >= 0; i--)
            pred[i] = FUNC14(FUNC2(FUNC8(&gb, 16)), 16);
        for(i = 0; i <= stereo; i++)
            *samples++ = pred[i];
        for(; i < unp_size / 2; i++) {
            if (FUNC10(&gb) < 0) {
                ret = AVERROR_INVALIDDATA;
                goto error;
            }
            if(i & stereo) {
                if(vlc[2].table)
                    res = FUNC11(&gb, vlc[2].table, SMKTREE_BITS, 3);
                else
                    res = 0;
                if (res < 0) {
                    FUNC4(avctx, AV_LOG_ERROR, "invalid vlc\n");
                    ret = AVERROR_INVALIDDATA;
                    goto error;
                }
                val  = h[2].values[res];
                if(vlc[3].table)
                    res = FUNC11(&gb, vlc[3].table, SMKTREE_BITS, 3);
                else
                    res = 0;
                if (res < 0) {
                    FUNC4(avctx, AV_LOG_ERROR, "invalid vlc\n");
                    ret = AVERROR_INVALIDDATA;
                    goto error;
                }
                val |= h[3].values[res] << 8;
                pred[1] += (unsigned)FUNC14(val, 16);
                *samples++ = pred[1];
            } else {
                if(vlc[0].table)
                    res = FUNC11(&gb, vlc[0].table, SMKTREE_BITS, 3);
                else
                    res = 0;
                if (res < 0) {
                    FUNC4(avctx, AV_LOG_ERROR, "invalid vlc\n");
                    ret = AVERROR_INVALIDDATA;
                    goto error;
                }
                val  = h[0].values[res];
                if(vlc[1].table)
                    res = FUNC11(&gb, vlc[1].table, SMKTREE_BITS, 3);
                else
                    res = 0;
                if (res < 0) {
                    FUNC4(avctx, AV_LOG_ERROR, "invalid vlc\n");
                    ret = AVERROR_INVALIDDATA;
                    goto error;
                }
                val |= h[1].values[res] << 8;
                pred[0] += (unsigned)FUNC14(val, 16);
                *samples++ = pred[0];
            }
        }
    } else { //8-bit data
        for(i = stereo; i >= 0; i--)
            pred[i] = FUNC8(&gb, 8);
        for(i = 0; i <= stereo; i++)
            *samples8++ = pred[i];
        for(; i < unp_size; i++) {
            if (FUNC10(&gb) < 0) {
                ret = AVERROR_INVALIDDATA;
                goto error;
            }
            if(i & stereo){
                if(vlc[1].table)
                    res = FUNC11(&gb, vlc[1].table, SMKTREE_BITS, 3);
                else
                    res = 0;
                if (res < 0) {
                    FUNC4(avctx, AV_LOG_ERROR, "invalid vlc\n");
                    ret = AVERROR_INVALIDDATA;
                    goto error;
                }
                pred[1] += FUNC14(h[1].values[res], 8);
                *samples8++ = pred[1];
            } else {
                if(vlc[0].table)
                    res = FUNC11(&gb, vlc[0].table, SMKTREE_BITS, 3);
                else
                    res = 0;
                if (res < 0) {
                    FUNC4(avctx, AV_LOG_ERROR, "invalid vlc\n");
                    ret = AVERROR_INVALIDDATA;
                    goto error;
                }
                pred[0] += FUNC14(h[0].values[res], 8);
                *samples8++ = pred[0];
            }
        }
    }

    *got_frame_ptr = 1;
    ret = buf_size;

error:
    for(i = 0; i < 4; i++) {
        if(vlc[i].table)
            FUNC6(&vlc[i]);
        FUNC3(h[i].bits);
        FUNC3(h[i].lengths);
        FUNC3(h[i].values);
    }

    return ret;
}