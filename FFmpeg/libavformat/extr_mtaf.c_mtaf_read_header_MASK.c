#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  pb; } ;
struct TYPE_9__ {TYPE_1__* codecpar; int /*<<< orphan*/  duration; } ;
struct TYPE_8__ {int channels; int sample_rate; int block_align; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_MTAF ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int,int) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s)
{
    int stream_count;
    AVStream *st;

    st = FUNC1(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    FUNC5(s->pb, 0x5c);
    st->duration = FUNC3(s->pb);
    FUNC5(s->pb, 1);
    stream_count = FUNC2(s->pb);
    if (!stream_count)
        return AVERROR_INVALIDDATA;

    st->codecpar->codec_type  = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id    = AV_CODEC_ID_ADPCM_MTAF;
    st->codecpar->channels    = 2 * stream_count;
    st->codecpar->sample_rate = 48000;
    st->codecpar->block_align = 0x110 * st->codecpar->channels / 2;
    FUNC6(st, 64, 1, st->codecpar->sample_rate);

    FUNC4(s->pb, 0x800, SEEK_SET);

    return 0;
}