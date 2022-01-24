#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  pb; TYPE_2__** streams; } ;
struct TYPE_12__ {TYPE_1__* codecpar; } ;
struct TYPE_11__ {int /*<<< orphan*/  codecpar; } ;
struct TYPE_10__ {int sample_rate; void* channels; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_ADX ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (char,char,char,char) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_3__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s)
{
    unsigned nb_streams, first_offset, nb_segments;
    unsigned stream_list_offset;
    unsigned segment_list_offset = 0x20;
    unsigned segment_list_entry_size = 0x10;
    unsigned size;
    int i;

    FUNC8(s->pb, 4);
    first_offset = FUNC5(s->pb) + 8;
    FUNC8(s->pb, 16);
    nb_segments = FUNC4(s->pb);
    if (nb_segments == 0)
        return AVERROR_INVALIDDATA;
    stream_list_offset = segment_list_offset + segment_list_entry_size * nb_segments + 0x10;
    if (stream_list_offset >= first_offset)
        return AVERROR_INVALIDDATA;
    FUNC7(s->pb, stream_list_offset, SEEK_SET);
    nb_streams = FUNC3(s->pb);
    if (nb_streams == 0)
        return AVERROR_INVALIDDATA;
    FUNC8(s->pb, 7);
    for (i = 0; i < nb_streams; i++) {
        AVStream *st = FUNC2(s, NULL);

        if (!st)
            return FUNC0(ENOMEM);
        st->codecpar->codec_type  = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_id    = AV_CODEC_ID_ADPCM_ADX;
        st->codecpar->sample_rate = FUNC5(s->pb);
        st->codecpar->channels    = FUNC3(s->pb);
        FUNC9(st, 64, 1, st->codecpar->sample_rate);
        FUNC8(s->pb, 3);
    }

    FUNC7(s->pb, first_offset, SEEK_SET);
    for (i = 0; i < nb_streams; i++) {
        if (FUNC6(s->pb) != FUNC1('A','I','X','P'))
            return AVERROR_INVALIDDATA;
        size = FUNC5(s->pb);
        if (size <= 8)
            return AVERROR_INVALIDDATA;
        FUNC8(s->pb, 8);
        FUNC10(s, s->streams[i]->codecpar, s->pb, size - 8);
    }

    return 0;
}