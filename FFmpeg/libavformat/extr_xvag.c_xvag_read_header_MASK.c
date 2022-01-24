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
struct TYPE_11__ {int /*<<< orphan*/  pb; } ;
struct TYPE_10__ {TYPE_1__* codecpar; int /*<<< orphan*/  need_parsing; void* duration; } ;
struct TYPE_9__ {int channels; int block_align; void* sample_rate; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVSTREAM_PARSE_FULL_RAW ; 
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_PSX ; 
 int /*<<< orphan*/  AV_CODEC_ID_MP3 ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FF_SANE_NB_CHANNELS ; 
 unsigned int FUNC1 (unsigned int) ; 
 TYPE_2__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int,void*) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s)
{
    unsigned offset, big_endian, codec;
    AVStream *st;

    FUNC6(s->pb, 4);

    st = FUNC2(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;

    offset     = FUNC5(s->pb);
    big_endian = offset > FUNC1(offset);
    if (big_endian) {
        offset                 = FUNC1(offset);
        FUNC6(s->pb, 28);
        codec                  = FUNC4(s->pb);
        st->codecpar->channels = FUNC4(s->pb);
        FUNC6(s->pb, 4);
        st->duration           = FUNC4(s->pb);
        FUNC6(s->pb, 8);
        st->codecpar->sample_rate = FUNC4(s->pb);
    } else {
        FUNC6(s->pb, 28);
        codec                  = FUNC5(s->pb);
        st->codecpar->channels = FUNC5(s->pb);
        FUNC6(s->pb, 4);
        st->duration           = FUNC5(s->pb);
        FUNC6(s->pb, 8);
        st->codecpar->sample_rate = FUNC5(s->pb);
    }

    if (st->codecpar->sample_rate <= 0)
        return AVERROR_INVALIDDATA;
    if (st->codecpar->channels <= 0 || st->codecpar->channels > FF_SANE_NB_CHANNELS)
        return AVERROR_INVALIDDATA;

    switch (codec) {
    case 0x1c:
        st->codecpar->codec_id    = AV_CODEC_ID_ADPCM_PSX;
        st->codecpar->block_align = 16 * st->codecpar->channels;
        break;
    default:
        FUNC8(s, "codec %X", codec);
        return AVERROR_PATCHWELCOME;
    };

    FUNC6(s->pb, offset - FUNC7(s->pb));

    if (FUNC3(s->pb) == 0xFFFB) {
        st->codecpar->codec_id    = AV_CODEC_ID_MP3;
        st->codecpar->block_align = 0x1000;
        st->need_parsing       = AVSTREAM_PARSE_FULL_RAW;
    }

    FUNC6(s->pb, -2);
    FUNC9(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}