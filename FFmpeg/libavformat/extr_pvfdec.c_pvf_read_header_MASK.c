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
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_10__ {int /*<<< orphan*/  pb; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {int channels; int sample_rate; int bits_per_coded_sample; int block_align; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FF_SANE_NB_CHANNELS ; 
 int INT_MAX ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (char*,char*,int*,int*,int*) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s)
{
    char buffer[32];
    AVStream *st;
    int bps, channels, sample_rate;

    FUNC2(s->pb, 5);
    FUNC4(s->pb, buffer, sizeof(buffer));
    if (FUNC6(buffer, "%d %d %d",
               &channels,
               &sample_rate,
               &bps) != 3)
        return AVERROR_INVALIDDATA;

    if (channels <= 0 || channels > FF_SANE_NB_CHANNELS ||
        bps <= 0 || bps > INT_MAX / FF_SANE_NB_CHANNELS || sample_rate <= 0)
        return AVERROR_INVALIDDATA;

    st = FUNC1(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    st->codecpar->codec_type  = AVMEDIA_TYPE_AUDIO;
    st->codecpar->channels    = channels;
    st->codecpar->sample_rate = sample_rate;
    st->codecpar->codec_id    = FUNC5(bps, 0, 1, 0xFFFF);
    st->codecpar->bits_per_coded_sample = bps;
    st->codecpar->block_align = bps * st->codecpar->channels / 8;

    FUNC3(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}