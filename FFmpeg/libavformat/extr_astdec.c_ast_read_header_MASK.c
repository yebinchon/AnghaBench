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
struct TYPE_10__ {TYPE_1__* codecpar; void* duration; scalar_t__ start_time; } ;
struct TYPE_9__ {int channels; scalar_t__ sample_rate; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_4POINT0 ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_STEREO ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  ff_codec_ast_tags ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s)
{
    int depth;
    AVStream *st;

    st = FUNC1(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    FUNC4(s->pb, 8);
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id   = FUNC7(ff_codec_ast_tags, FUNC2(s->pb));

    depth = FUNC2(s->pb);
    if (depth != 16) {
        FUNC5(s, "depth %d", depth);
        return AVERROR_INVALIDDATA;
    }

    st->codecpar->channels = FUNC2(s->pb);
    if (!st->codecpar->channels)
        return AVERROR_INVALIDDATA;

    if (st->codecpar->channels == 2)
        st->codecpar->channel_layout = AV_CH_LAYOUT_STEREO;
    else if (st->codecpar->channels == 4)
        st->codecpar->channel_layout = AV_CH_LAYOUT_4POINT0;

    FUNC4(s->pb, 2);
    st->codecpar->sample_rate = FUNC3(s->pb);
    if (st->codecpar->sample_rate <= 0)
        return AVERROR_INVALIDDATA;
    st->start_time         = 0;
    st->duration           = FUNC3(s->pb);
    FUNC4(s->pb, 40);
    FUNC6(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}