#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int channels; int sample_rate; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
struct TYPE_11__ {int seekable; } ;
struct TYPE_10__ {TYPE_4__* pb; } ;
struct TYPE_9__ {TYPE_7__* codecpar; int /*<<< orphan*/  duration; scalar_t__ start_time; } ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVIO_SEEKABLE_NORMAL ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_STEREO ; 
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_DTK ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s)
{
    AVStream *st;

    st = FUNC2(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    st->codecpar->codec_type     = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id       = AV_CODEC_ID_ADPCM_DTK;
    st->codecpar->channel_layout = AV_CH_LAYOUT_STEREO;
    st->codecpar->channels       = 2;
    st->codecpar->sample_rate    = 48000;
    st->start_time            = 0;
    if (s->pb->seekable & AVIO_SEEKABLE_NORMAL)
        st->duration          = FUNC1(st->codecpar, FUNC3(s->pb));

    FUNC4(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}