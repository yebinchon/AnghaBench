#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct oggvorbis_private {int** packet; int* len; scalar_t__ vp; } ;
struct ogg_stream {int* buf; size_t pstart; int psize; struct oggvorbis_private* private; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_12__ {TYPE_2__** streams; struct ogg* priv_data; } ;
struct TYPE_11__ {TYPE_1__* codecpar; int /*<<< orphan*/  metadata; } ;
struct TYPE_10__ {int channels; int sample_rate; int extradata_size; int /*<<< orphan*/  extradata; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; void* bit_rate; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_VORBIS ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int,int,int) ; 
 int FUNC8 (int const**) ; 
 void* FUNC9 (int const**) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_3__*,struct oggvorbis_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int*,int*,int) ; 
 scalar_t__ FUNC13 (TYPE_3__*,int) ; 

__attribute__((used)) static int FUNC14(AVFormatContext *s, int idx)
{
    struct ogg *ogg = s->priv_data;
    AVStream *st    = s->streams[idx];
    struct ogg_stream *os = ogg->streams + idx;
    struct oggvorbis_private *priv;
    int pkt_type = os->buf[os->pstart];

    if (!os->private) {
        os->private = FUNC5(sizeof(struct oggvorbis_private));
        if (!os->private)
            return FUNC0(ENOMEM);
    }

    priv = os->private;

    if (!(pkt_type & 1))
        return priv->vp ? 0 : AVERROR_INVALIDDATA;

    if (os->psize < 1 || pkt_type > 5)
        return AVERROR_INVALIDDATA;

    if (priv->packet[pkt_type >> 1])
        return AVERROR_INVALIDDATA;
    if (pkt_type > 1 && !priv->packet[0] || pkt_type > 3 && !priv->packet[1])
        return priv->vp ? 0 : AVERROR_INVALIDDATA;

    priv->len[pkt_type >> 1]    = os->psize;
    priv->packet[pkt_type >> 1] = FUNC5(os->psize);
    if (!priv->packet[pkt_type >> 1])
        return FUNC0(ENOMEM);
    FUNC12(priv->packet[pkt_type >> 1], os->buf + os->pstart, os->psize);
    if (os->buf[os->pstart] == 1) {
        const uint8_t *p = os->buf + os->pstart + 7; /* skip "\001vorbis" tag */
        unsigned blocksize, bs0, bs1;
        int srate;
        int channels;

        if (os->psize != 30)
            return AVERROR_INVALIDDATA;

        if (FUNC9(&p) != 0) /* vorbis_version */
            return AVERROR_INVALIDDATA;

        channels = FUNC8(&p);
        if (st->codecpar->channels && channels != st->codecpar->channels) {
            FUNC4(s, AV_LOG_ERROR, "Channel change is not supported\n");
            return AVERROR_PATCHWELCOME;
        }
        st->codecpar->channels = channels;
        srate               = FUNC9(&p);
        p += 4; // skip maximum bitrate
        st->codecpar->bit_rate = FUNC9(&p); // nominal bitrate
        p += 4; // skip minimum bitrate

        blocksize = FUNC8(&p);
        bs0       = blocksize & 15;
        bs1       = blocksize >> 4;

        if (bs0 > bs1)
            return AVERROR_INVALIDDATA;
        if (bs0 < 6 || bs1 > 13)
            return AVERROR_INVALIDDATA;

        if (FUNC8(&p) != 1) /* framing_flag */
            return AVERROR_INVALIDDATA;

        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_id   = AV_CODEC_ID_VORBIS;

        if (srate > 0) {
            st->codecpar->sample_rate = srate;
            FUNC7(st, 64, 1, srate);
        }
    } else if (os->buf[os->pstart] == 3) {
        if (FUNC13(s, idx) >= 0 && priv->len[1] > 10) {
            unsigned new_len;

            int ret = FUNC10(st, st->metadata);
            if (ret < 0)
                return ret;

            // drop all metadata we parsed and which is not required by libvorbis
            new_len = 7 + 4 + FUNC1(priv->packet[1] + 7) + 4 + 1;
            if (new_len >= 16 && new_len < os->psize) {
                FUNC2(priv->packet[1] + new_len - 5, 0);
                priv->packet[1][new_len - 1] = 1;
                priv->len[1]                 = new_len;
            }
        }
    } else {
        int ret = FUNC11(s, priv, &st->codecpar->extradata);
        if (ret < 0) {
            st->codecpar->extradata_size = 0;
            return ret;
        }
        st->codecpar->extradata_size = ret;

        priv->vp = FUNC6(st->codecpar->extradata, st->codecpar->extradata_size);
        if (!priv->vp) {
            FUNC3(&st->codecpar->extradata);
            st->codecpar->extradata_size = 0;
            return AVERROR_UNKNOWN;
        }
    }

    return 1;
}