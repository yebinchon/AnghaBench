#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_9__ {scalar_t__ write_prft; int /*<<< orphan*/  fc; TYPE_3__* tracks; } ;
struct TYPE_8__ {TYPE_2__* cluster; int /*<<< orphan*/  track_id; TYPE_1__* st; int /*<<< orphan*/  entry; } ;
struct TYPE_7__ {scalar_t__ pts; } ;
struct TYPE_6__ {int /*<<< orphan*/  time_base; } ;
typedef  TYPE_3__ MOVTrack ;
typedef  TYPE_4__ MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 scalar_t__ MOV_PRFT_SRC_PTS ; 
 scalar_t__ MOV_PRFT_SRC_WALLCLOCK ; 
 scalar_t__ NTP_OFFSET_US ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC11(AVIOContext *pb, MOVMuxContext *mov, int tracks)
{
    int64_t pos = FUNC2(pb), pts_us, ntp_ts;
    MOVTrack *first_track;

    /* PRFT should be associated with at most one track. So, choosing only the
     * first track. */
    if (tracks > 0)
        return 0;
    first_track = &(mov->tracks[0]);

    if (!first_track->entry) {
        FUNC0(mov->fc, AV_LOG_WARNING, "Unable to write PRFT, no entries in the track\n");
        return 0;
    }

    if (first_track->cluster[0].pts == AV_NOPTS_VALUE) {
        FUNC0(mov->fc, AV_LOG_WARNING, "Unable to write PRFT, first PTS is invalid\n");
        return 0;
    }

    if (mov->write_prft == MOV_PRFT_SRC_WALLCLOCK) {
        ntp_ts = FUNC7(FUNC8());
    } else if (mov->write_prft == MOV_PRFT_SRC_PTS) {
        pts_us = FUNC1(first_track->cluster[0].pts,
                              first_track->st->time_base, AV_TIME_BASE_Q);
        ntp_ts = FUNC7(pts_us + NTP_OFFSET_US);
    } else {
        FUNC0(mov->fc, AV_LOG_WARNING, "Unsupported PRFT box configuration: %d\n",
               mov->write_prft);
        return 0;
    }

    FUNC5(pb, 0);                           // Size place holder
    FUNC9(pb, "prft");                   // Type
    FUNC3(pb, 1);                             // Version
    FUNC4(pb, 0);                           // Flags
    FUNC5(pb, first_track->track_id);       // reference track ID
    FUNC6(pb, ntp_ts);                      // NTP time stamp
    FUNC6(pb, first_track->cluster[0].pts); //media time
    return FUNC10(pb, pos);
}