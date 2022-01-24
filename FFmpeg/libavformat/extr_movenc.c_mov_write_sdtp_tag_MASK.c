#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {int entry; TYPE_1__* cluster; } ;
struct TYPE_4__ {int flags; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int MOV_DISPOSABLE_SAMPLE ; 
 int MOV_SAMPLE_DEPENDENCY_NO ; 
 int MOV_SAMPLE_DEPENDENCY_UNKNOWN ; 
 int MOV_SAMPLE_DEPENDENCY_YES ; 
 int MOV_SYNC_SAMPLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVIOContext *pb, MOVTrack *track)
{
    int i;
    uint8_t leading, dependent, reference, redundancy;
    int64_t pos = FUNC0(pb);
    FUNC2(pb, 0); // size
    FUNC3(pb, "sdtp");
    FUNC2(pb, 0); // version & flags
    for (i = 0; i < track->entry; i++) {
        dependent = MOV_SAMPLE_DEPENDENCY_YES;
        leading = reference = redundancy = MOV_SAMPLE_DEPENDENCY_UNKNOWN;
        if (track->cluster[i].flags & MOV_DISPOSABLE_SAMPLE) {
            reference = MOV_SAMPLE_DEPENDENCY_NO;
        }
        if (track->cluster[i].flags & MOV_SYNC_SAMPLE) {
            dependent = MOV_SAMPLE_DEPENDENCY_NO;
        }
        FUNC1(pb, (leading << 6)   | (dependent << 4) |
                    (reference << 2) | redundancy);
    }
    return FUNC4(pb, pos);
}