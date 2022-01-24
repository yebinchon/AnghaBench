#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  long long int64_t ;
struct TYPE_15__ {TYPE_1__* iformat; int /*<<< orphan*/  metadata; int /*<<< orphan*/ * pb; } ;
struct TYPE_14__ {TYPE_2__* codecpar; } ;
struct TYPE_13__ {int sample_rate; int channels; long long bit_rate; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
struct TYPE_12__ {int /*<<< orphan*/  raw_codec_id; } ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int AV_TIMECODE_STR_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    AVStream *st;
    int version;
    uint32_t text_offset, data_offset, channel_assign;
    char playback_time[AV_TIMECODE_STR_SIZE];

    st = FUNC4(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    FUNC8(pb, 8);
    version = FUNC5(pb);
    FUNC2(s, AV_LOG_DEBUG, "version: %i.%i\n", version >> 4, version & 0xF);
    FUNC8(pb, 11);

    if (version < 0x10) {
        text_offset = 0x80;
        data_offset = 0x800;
        FUNC8(pb, 8);
    } else {
        text_offset = FUNC6(pb);
        data_offset = FUNC6(pb);
    }

    FUNC8(pb, 4);
    FUNC3(playback_time, FUNC6(pb), 0);
    FUNC1(&s->metadata, "playback_time", playback_time, 0);

    st->codecpar->codec_type  = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id    = s->iformat->raw_codec_id;
    st->codecpar->sample_rate = FUNC6(pb) / 8;
    FUNC8(pb, 4);
    st->codecpar->channels    = FUNC5(pb) & 0xF;
    st->codecpar->bit_rate    = (int64_t)st->codecpar->channels * st->codecpar->sample_rate * 8LL;
    if (!st->codecpar->channels)
        return AVERROR_INVALIDDATA;

    FUNC8(pb, 3);
    channel_assign         = FUNC6(pb);
    if (!(channel_assign & 1)) {
        int i;
        for (i = 1; i < 32; i++)
            if ((channel_assign >> i) & 1)
                st->codecpar->channel_layout |= FUNC11(s, i);
    }

    FUNC8(pb, 16);
    if (FUNC6(pb))
       FUNC9(s, "emphasis");

    if (FUNC7(pb, text_offset, SEEK_SET) >= 0) {
        FUNC10(s, "title",       128);
        FUNC10(s, "composer",    128);
        FUNC10(s, "song_writer", 128);
        FUNC10(s, "artist",      128);
        FUNC10(s, "album",       128);
        FUNC10(s, "genre",        32);
        FUNC10(s, "date",         32);
        FUNC10(s, "location",     32);
        FUNC10(s, "comment",     512);
        FUNC10(s, "user",        512);
    }

    return FUNC7(pb, data_offset, SEEK_SET);
}