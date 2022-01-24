#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* num; void* den; } ;
struct TYPE_8__ {int /*<<< orphan*/  codec; TYPE_1__ time_base; void* nb_frames; } ;
typedef  TYPE_2__ VideoProperties ;
struct TYPE_9__ {int /*<<< orphan*/ * pb; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_CODEC_ID_VP6 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, VideoProperties *video)
{
    AVIOContext *pb = s->pb;

    FUNC2(pb, 8);
    video->nb_frames = FUNC1(pb);
    FUNC2(pb, 4);
    video->time_base.den = FUNC1(pb);
    video->time_base.num = FUNC1(pb);
    if (video->time_base.den <= 0 || video->time_base.num <= 0) {
        FUNC0(s, AV_LOG_ERROR, "Timebase is invalid\n");
        return AVERROR_INVALIDDATA;
    }
    video->codec   = AV_CODEC_ID_VP6;

    return 1;
}