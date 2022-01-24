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
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_12__ {int /*<<< orphan*/ * pb; } ;
struct TYPE_11__ {unsigned int duration; TYPE_1__* codecpar; } ;
struct TYPE_10__ {int codec_tag; int codec_id; int channels; int sample_rate; int block_align; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_MONO ; 
 int AV_CODEC_ID_ADPCM_IMA_WAV ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int) ; 
 TYPE_2__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ff_codec_rso_tags ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    int id, rate, bps;
    unsigned int size;
    enum AVCodecID codec;
    AVStream *st;

    id   = FUNC3(pb);
    size = FUNC3(pb);
    rate = FUNC3(pb);
    FUNC3(pb);   /* play mode ? (0x0000 = don't loop) */

    codec = FUNC7(ff_codec_rso_tags, id);

    if (codec == AV_CODEC_ID_ADPCM_IMA_WAV) {
        FUNC4(s, "ADPCM in RSO");
        return AVERROR_PATCHWELCOME;
    }

    bps = FUNC1(codec);
    if (!bps) {
        FUNC5(s, "Unknown bits per sample");
        return AVERROR_PATCHWELCOME;
    }

    /* now we are ready: build format streams */
    st = FUNC2(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    st->duration            = (size * 8) / bps;
    st->codecpar->codec_type   = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_tag    = id;
    st->codecpar->codec_id     = codec;
    st->codecpar->channels     = 1;
    st->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
    st->codecpar->sample_rate  = rate;
    st->codecpar->block_align  = 1;

    FUNC6(st, 64, 1, rate);

    return 0;
}