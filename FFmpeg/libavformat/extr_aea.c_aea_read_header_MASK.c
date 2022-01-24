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
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {int channels; int sample_rate; int bit_rate; int block_align; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AT1_SU_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_MONO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_STEREO ; 
 int /*<<< orphan*/  AV_CODEC_ID_ATRAC1 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s)
{
    AVStream *st = FUNC2(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    /* Parse the amount of channels and skip to pos 2048(0x800) */
    FUNC4(s->pb, 264);
    st->codecpar->channels = FUNC3(s->pb);
    FUNC4(s->pb, 1783);


    st->codecpar->codec_type     = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id       = AV_CODEC_ID_ATRAC1;
    st->codecpar->sample_rate    = 44100;
    st->codecpar->bit_rate       = 292000;

    if (st->codecpar->channels != 1 && st->codecpar->channels != 2) {
        FUNC1(s, AV_LOG_ERROR, "Channels %d not supported!\n", st->codecpar->channels);
        return AVERROR_INVALIDDATA;
    }

    st->codecpar->channel_layout = (st->codecpar->channels == 1) ? AV_CH_LAYOUT_MONO : AV_CH_LAYOUT_STEREO;

    st->codecpar->block_align = AT1_SU_SIZE * st->codecpar->channels;
    return 0;
}