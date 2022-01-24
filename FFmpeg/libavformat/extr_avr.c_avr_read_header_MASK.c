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
typedef  int uint16_t ;
struct TYPE_11__ {int /*<<< orphan*/  pb; } ;
struct TYPE_10__ {TYPE_1__* codecpar; } ;
struct TYPE_9__ {int channels; int bits_per_coded_sample; scalar_t__ codec_id; int block_align; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AV_CODEC_ID_NONE ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s)
{
    uint16_t chan, sign, bps;
    AVStream *st;

    st = FUNC1(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;

    FUNC4(s->pb, 4); // magic
    FUNC4(s->pb, 8); // sample_name

    chan = FUNC2(s->pb);
    if (!chan) {
        st->codecpar->channels = 1;
    } else if (chan == 0xFFFFu) {
        st->codecpar->channels = 2;
    } else {
        FUNC5(s, "chan %d", chan);
        return AVERROR_PATCHWELCOME;
    }

    st->codecpar->bits_per_coded_sample = bps = FUNC2(s->pb);

    sign = FUNC2(s->pb);

    FUNC4(s->pb, 2); // loop
    FUNC4(s->pb, 2); // midi
    FUNC4(s->pb, 1); // replay speed

    st->codecpar->sample_rate = FUNC3(s->pb);
    FUNC4(s->pb, 4 * 3);
    FUNC4(s->pb, 2 * 3);
    FUNC4(s->pb, 20);
    FUNC4(s->pb, 64);

    st->codecpar->codec_id = FUNC7(bps, 0, 1, sign);
    if (st->codecpar->codec_id == AV_CODEC_ID_NONE) {
        FUNC5(s, "Bps %d and sign %d", bps, sign);
        return AVERROR_PATCHWELCOME;
    }

    st->codecpar->block_align = bps * st->codecpar->channels / 8;

    FUNC6(st, 64, 1, st->codecpar->sample_rate);
    return 0;
}