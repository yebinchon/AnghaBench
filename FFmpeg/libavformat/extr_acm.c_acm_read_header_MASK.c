#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int channels; scalar_t__ sample_rate; scalar_t__ extradata; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
struct TYPE_10__ {int /*<<< orphan*/  pb; } ;
struct TYPE_9__ {int duration; TYPE_4__* codecpar; int /*<<< orphan*/  need_parsing; scalar_t__ start_time; } ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVSTREAM_PARSE_FULL_RAW ; 
 int /*<<< orphan*/  AV_CODEC_ID_INTERPLAY_ACM ; 
 void* FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_1__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,scalar_t__) ; 
 int FUNC5 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    AVStream *st;
    int ret;

    st = FUNC3(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id   = AV_CODEC_ID_INTERPLAY_ACM;

    ret = FUNC5(s, st->codecpar, s->pb, 14);
    if (ret < 0)
        return ret;

    st->codecpar->channels    = FUNC1(st->codecpar->extradata +  8);
    st->codecpar->sample_rate = FUNC1(st->codecpar->extradata + 10);
    if (st->codecpar->channels <= 0 || st->codecpar->sample_rate <= 0)
        return AVERROR_INVALIDDATA;
    st->start_time         = 0;
    st->duration           = FUNC2(st->codecpar->extradata +  4) / st->codecpar->channels;
    st->need_parsing       = AVSTREAM_PARSE_FULL_RAW;
    FUNC4(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}