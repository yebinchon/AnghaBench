#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int int64_t ;
struct TYPE_18__ {int num; int den; } ;
struct TYPE_17__ {int /*<<< orphan*/  index; TYPE_1__* codecpar; int /*<<< orphan*/  time_base; TYPE_2__* priv_data; } ;
struct TYPE_16__ {int /*<<< orphan*/  fc; } ;
struct TYPE_15__ {scalar_t__* samples_per_frame; } ;
struct TYPE_14__ {int /*<<< orphan*/  edit_rate; } ;
struct TYPE_13__ {scalar_t__ codec_type; } ;
typedef  TYPE_2__ MXFTrack ;
typedef  TYPE_3__ MXFSamplesPerFrame ;
typedef  TYPE_4__ MXFContext ;
typedef  TYPE_5__ AVStream ;
typedef  TYPE_6__ AVRational ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_6__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int FUNC3 (int,TYPE_6__,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,TYPE_6__) ; 

__attribute__((used)) static int64_t FUNC5(MXFContext *mxf, AVStream *st,
                                        int64_t edit_unit)
{
    int i, total = 0, size = 0;
    MXFTrack *track = st->priv_data;
    AVRational time_base = FUNC1(track->edit_rate);
    AVRational sample_rate = FUNC1(st->time_base);
    const MXFSamplesPerFrame *spf = NULL;
    int64_t sample_count;

    // For non-audio sample_count equals current edit unit
    if (st->codecpar->codec_type != AVMEDIA_TYPE_AUDIO)
        return edit_unit;

    if ((sample_rate.num / sample_rate.den) == 48000)
        spf = FUNC4(mxf->fc, time_base);
    if (!spf) {
        int remainder = (sample_rate.num * time_base.num) %
                        (time_base.den * sample_rate.den);
        if (remainder)
            FUNC2(mxf->fc, AV_LOG_WARNING,
                   "seeking detected on stream #%d with time base (%d/%d) and "
                   "sample rate (%d/%d), audio pts won't be accurate.\n",
                   st->index, time_base.num, time_base.den,
                   sample_rate.num, sample_rate.den);
        return FUNC3(edit_unit, sample_rate, track->edit_rate);
    }

    while (spf->samples_per_frame[size]) {
        total += spf->samples_per_frame[size];
        size++;
    }

    FUNC0(size);

    sample_count = (edit_unit / size) * (uint64_t)total;
    for (i = 0; i < edit_unit % size; i++) {
        sample_count += spf->samples_per_frame[i];
    }

    return sample_count;
}