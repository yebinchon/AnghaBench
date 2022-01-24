#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int channels; int block_align; void* sample_rate; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  extradata; int /*<<< orphan*/  extradata_size; int /*<<< orphan*/  codec_type; } ;
struct TYPE_11__ {int /*<<< orphan*/  pb; } ;
struct TYPE_10__ {TYPE_4__* codecpar; int /*<<< orphan*/  duration; int /*<<< orphan*/  need_parsing; } ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVSTREAM_PARSE_FULL_RAW ; 
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_PSX ; 
 int /*<<< orphan*/  AV_CODEC_ID_ATRAC3 ; 
 int /*<<< orphan*/  AV_CODEC_ID_MP3 ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_S16BE ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_S16LE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,unsigned int) ; 
 TYPE_1__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int,void*) ; 
 int FUNC9 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s)
{
    unsigned codec, size;
    AVStream *st;
    int ret;

    FUNC5(s->pb, 4);

    st = FUNC3(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    st->codecpar->codec_type  = AVMEDIA_TYPE_AUDIO;
    codec                  = FUNC4(s->pb);
    st->codecpar->channels    = FUNC4(s->pb);
    if (st->codecpar->channels <= 0 || st->codecpar->channels >= INT_MAX / 1024)
        return AVERROR_INVALIDDATA;
    size = FUNC4(s->pb);
    st->codecpar->sample_rate = FUNC4(s->pb);
    if (st->codecpar->sample_rate <= 0)
        return AVERROR_INVALIDDATA;
    // avio_rb32(s->pb); /* byte flags with encoder info */
    switch (codec) {
    case 0: st->codecpar->codec_id = AV_CODEC_ID_PCM_S16BE; break;
    case 1: st->codecpar->codec_id = AV_CODEC_ID_PCM_S16LE; break;
    case 3: st->codecpar->block_align = 16 * st->codecpar->channels;
            st->codecpar->codec_id = AV_CODEC_ID_ADPCM_PSX; break;
    case 4:
    case 5:
    case 6: st->codecpar->block_align = (codec == 4 ? 96 : codec == 5 ? 152 : 192) * st->codecpar->channels;
            ret = FUNC9(st->codecpar, 14);
            if (ret < 0)
                return ret;
            FUNC10(st->codecpar->extradata, 0, st->codecpar->extradata_size);
            FUNC1(st->codecpar->extradata, 1); /* version */
            FUNC1(st->codecpar->extradata+2, 2048 * st->codecpar->channels); /* unknown size */
            FUNC1(st->codecpar->extradata+6, codec == 4 ? 1 : 0); /* joint stereo */
            FUNC1(st->codecpar->extradata+8, codec == 4 ? 1 : 0); /* joint stereo (repeat?) */
            FUNC1(st->codecpar->extradata+10, 1);
            st->codecpar->codec_id = AV_CODEC_ID_ATRAC3;    break;
    case 7: st->need_parsing = AVSTREAM_PARSE_FULL_RAW;
            st->codecpar->codec_id = AV_CODEC_ID_MP3;       break;
    default:
            FUNC7(s, "Codec %d", codec);
            return AVERROR_PATCHWELCOME;
    }
    st->duration = FUNC2(st->codecpar, size);
    FUNC5(s->pb, 0x40 - FUNC6(s->pb));
    FUNC8(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}