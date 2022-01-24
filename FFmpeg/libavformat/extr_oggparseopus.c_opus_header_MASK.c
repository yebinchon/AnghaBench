#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct oggopus_private {int need_comments; int /*<<< orphan*/  pre_skip; } ;
struct ogg_stream {int pstart; int flags; int psize; struct oggopus_private* private; int /*<<< orphan*/ * buf; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_10__ {int channels; int sample_rate; int /*<<< orphan*/  seek_preroll; int /*<<< orphan*/  extradata; int /*<<< orphan*/  initial_padding; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
struct TYPE_9__ {TYPE_1__** streams; struct ogg* priv_data; } ;
struct TYPE_8__ {TYPE_6__* codecpar; } ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_OPUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int OGG_FLAG_BOS ; 
 int OPUS_HEAD_SIZE ; 
 int /*<<< orphan*/  OPUS_SEEK_PREROLL_MS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct oggopus_private* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int,int) ; 
 scalar_t__ FUNC7 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *avf, int idx)
{
    struct ogg *ogg              = avf->priv_data;
    struct ogg_stream *os        = &ogg->streams[idx];
    AVStream *st                 = avf->streams[idx];
    struct oggopus_private *priv = os->private;
    uint8_t *packet              = os->buf + os->pstart;

    if (!priv) {
        priv = os->private = FUNC4(sizeof(*priv));
        if (!priv)
            return FUNC0(ENOMEM);
    }

    if (os->flags & OGG_FLAG_BOS) {
        if (os->psize < OPUS_HEAD_SIZE || (FUNC2(packet + 8) & 0xF0) != 0)
            return AVERROR_INVALIDDATA;
        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_id   = AV_CODEC_ID_OPUS;
        st->codecpar->channels   = FUNC2(packet + 9);

        priv->pre_skip        = FUNC1(packet + 10);
        st->codecpar->initial_padding = priv->pre_skip;
        /*orig_sample_rate    = AV_RL32(packet + 12);*/
        /*gain                = AV_RL16(packet + 16);*/
        /*channel_map         = AV_RL8 (packet + 18);*/

        FUNC3(&st->codecpar->extradata);
        if (FUNC7(st->codecpar, os->psize))
            return FUNC0(ENOMEM);

        FUNC10(st->codecpar->extradata, packet, os->psize);

        st->codecpar->sample_rate = 48000;
        st->codecpar->seek_preroll = FUNC5(OPUS_SEEK_PREROLL_MS,
                                                st->codecpar->sample_rate, 1000);
        FUNC6(st, 64, 1, 48000);
        priv->need_comments = 1;
        return 1;
    }

    if (priv->need_comments) {
        if (os->psize < 8 || FUNC9(packet, "OpusTags", 8))
            return AVERROR_INVALIDDATA;
        FUNC8(avf, st, packet + 8, os->psize - 8);
        priv->need_comments--;
        return 1;
    }

    return 0;
}