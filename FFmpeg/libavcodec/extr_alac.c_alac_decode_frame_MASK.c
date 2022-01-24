#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  enum AlacRawDataBlockType { ____Placeholder_AlacRawDataBlockType } AlacRawDataBlockType ;
struct TYPE_11__ {int channels; scalar_t__ nb_samples; int /*<<< orphan*/  gb; } ;
struct TYPE_10__ {TYPE_3__* priv_data; } ;
struct TYPE_9__ {int size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVCodecContext ;
typedef  TYPE_3__ ALACContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int TYPE_CPE ; 
 int TYPE_END ; 
 int TYPE_LFE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int,int) ; 
 int** ff_alac_channel_layout_offsets ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx, void *data,
                             int *got_frame_ptr, AVPacket *avpkt)
{
    ALACContext *alac = avctx->priv_data;
    AVFrame *frame    = data;
    enum AlacRawDataBlockType element;
    int channels;
    int ch, ret, got_end;

    if ((ret = FUNC6(&alac->gb, avpkt->data, avpkt->size)) < 0)
        return ret;

    got_end = 0;
    alac->nb_samples = 0;
    ch = 0;
    while (FUNC5(&alac->gb) >= 3) {
        element = FUNC3(&alac->gb, 3);
        if (element == TYPE_END) {
            got_end = 1;
            break;
        }
        if (element > TYPE_CPE && element != TYPE_LFE) {
            FUNC1(avctx, "Syntax element %d", element);
            return AVERROR_PATCHWELCOME;
        }

        channels = (element == TYPE_CPE) ? 2 : 1;
        if (ch + channels > alac->channels ||
            ff_alac_channel_layout_offsets[alac->channels - 1][ch] + channels > alac->channels) {
            FUNC0(avctx, AV_LOG_ERROR, "invalid element channel count\n");
            return AVERROR_INVALIDDATA;
        }

        ret = FUNC2(avctx, frame,
                             ff_alac_channel_layout_offsets[alac->channels - 1][ch],
                             channels);
        if (ret < 0 && FUNC5(&alac->gb))
            return ret;

        ch += channels;
    }
    if (!got_end) {
        FUNC0(avctx, AV_LOG_ERROR, "no end tag found. incomplete packet.\n");
        return AVERROR_INVALIDDATA;
    }

    if (avpkt->size * 8 - FUNC4(&alac->gb) > 8) {
        FUNC0(avctx, AV_LOG_ERROR, "Error : %d bits left\n",
               avpkt->size * 8 - FUNC4(&alac->gb));
    }

    if (alac->channels == ch && alac->nb_samples)
        *got_frame_ptr = 1;
    else
        FUNC0(avctx, AV_LOG_WARNING, "Failed to decode all channels\n");

    return avpkt->size;
}