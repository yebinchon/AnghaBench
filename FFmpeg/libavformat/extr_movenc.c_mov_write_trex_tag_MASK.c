#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int track_id; } ;
typedef  TYPE_1__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2(AVIOContext *pb, MOVTrack *track)
{
    FUNC0(pb, 0x20); /* size */
    FUNC1(pb, "trex");
    FUNC0(pb, 0);   /* version & flags */
    FUNC0(pb, track->track_id); /* track ID */
    FUNC0(pb, 1);   /* default sample description index */
    FUNC0(pb, 0);   /* default sample duration */
    FUNC0(pb, 0);   /* default sample size */
    FUNC0(pb, 0);   /* default sample flags */
    return 0;
}