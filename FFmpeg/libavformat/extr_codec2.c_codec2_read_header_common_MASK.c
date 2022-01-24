#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* codecpar; } ;
struct TYPE_5__ {int sample_rate; int channels; int /*<<< orphan*/  block_align; int /*<<< orphan*/  frame_size; int /*<<< orphan*/  bit_rate; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  format; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; int /*<<< orphan*/  extradata; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_MONO ; 
 int /*<<< orphan*/  AV_CODEC_ID_CODEC2 ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_S16 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int,int) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, AVStream *st)
{
    int mode = FUNC3(st->codecpar->extradata);

    st->codecpar->codec_type        = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id          = AV_CODEC_ID_CODEC2;
    st->codecpar->sample_rate       = 8000;
    st->codecpar->channels          = 1;
    st->codecpar->format            = AV_SAMPLE_FMT_S16;
    st->codecpar->channel_layout    = AV_CH_LAYOUT_MONO;
    st->codecpar->bit_rate          = FUNC0(s, mode);
    st->codecpar->frame_size        = FUNC2(s, mode);
    st->codecpar->block_align       = FUNC1(s, mode);

    if (st->codecpar->bit_rate <= 0 ||
        st->codecpar->frame_size <= 0 ||
        st->codecpar->block_align <= 0) {
        return AVERROR_INVALIDDATA;
    }

    FUNC4(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}