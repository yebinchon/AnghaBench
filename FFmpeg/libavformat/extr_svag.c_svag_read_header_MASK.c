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
struct TYPE_9__ {unsigned int duration; TYPE_1__* codecpar; } ;
struct TYPE_8__ {int channels; unsigned int block_align; void* sample_rate; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_PSX ; 
 int /*<<< orphan*/  ENOMEM ; 
 unsigned int INT_MAX ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int,void*) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    unsigned size, align;
    AVStream *st;

    FUNC3(s->pb, 4);

    st = FUNC1(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    size                   = FUNC2(s->pb);
    st->codecpar->codec_type  = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id    = AV_CODEC_ID_ADPCM_PSX;
    st->codecpar->sample_rate = FUNC2(s->pb);
    if (st->codecpar->sample_rate <= 0)
        return AVERROR_INVALIDDATA;
    st->codecpar->channels    = FUNC2(s->pb);
    if (st->codecpar->channels <= 0 || st->codecpar->channels > 8)
        return AVERROR_INVALIDDATA;
    st->duration           = size / (16 * st->codecpar->channels) * 28;
    align                  = FUNC2(s->pb);
    if (align <= 0 || align > INT_MAX / st->codecpar->channels)
        return AVERROR_INVALIDDATA;
    st->codecpar->block_align = align * st->codecpar->channels;
    FUNC3(s->pb, 0x800 - FUNC4(s->pb));
    FUNC5(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}