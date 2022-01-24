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
struct TYPE_6__ {scalar_t__ mode; } ;
struct TYPE_5__ {int track_duration; scalar_t__ mode; int time; int timescale; int /*<<< orphan*/  language; int /*<<< orphan*/  entry; } ;
typedef  TYPE_1__ MOVTrack ;
typedef  TYPE_2__ MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int INT32_MAX ; 
 scalar_t__ MODE_ISM ; 
 scalar_t__ MODE_MOV ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC8(AVIOContext *pb, MOVMuxContext *mov,
                              MOVTrack *track)
{
    int version = track->track_duration < INT32_MAX ? 0 : 1;

    if (track->mode == MODE_ISM)
        version = 1;

    (version == 1) ? FUNC5(pb, 44) : FUNC5(pb, 32); /* size */
    FUNC7(pb, "mdhd");
    FUNC2(pb, version);
    FUNC4(pb, 0); /* flags */
    if (version == 1) {
        FUNC6(pb, track->time);
        FUNC6(pb, track->time);
    } else {
        FUNC5(pb, track->time); /* creation time */
        FUNC5(pb, track->time); /* modification time */
    }
    FUNC5(pb, track->timescale); /* time scale (sample rate for audio) */
    if (!track->entry && mov->mode == MODE_ISM)
        (version == 1) ? FUNC6(pb, FUNC0(0xffffffffffffffff)) : FUNC5(pb, 0xffffffff);
    else if (!track->entry)
        (version == 1) ? FUNC6(pb, 0) : FUNC5(pb, 0);
    else
        (version == 1) ? FUNC6(pb, track->track_duration) : FUNC5(pb, track->track_duration); /* duration */
    FUNC3(pb, track->language); /* language */
    FUNC3(pb, 0); /* reserved (quality) */

    if (version != 0 && track->mode == MODE_MOV) {
        FUNC1(NULL, AV_LOG_ERROR,
               "FATAL error, file duration too long for timebase, this file will not be\n"
               "playable with QuickTime. Choose a different timebase with "
               "-video_track_timescale or a different container format\n");
    }

    return 32;
}