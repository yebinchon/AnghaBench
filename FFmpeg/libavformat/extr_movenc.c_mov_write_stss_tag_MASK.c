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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {int entry; TYPE_1__* cluster; } ;
struct TYPE_4__ {int flags; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int MOV_SYNC_SAMPLE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVIOContext *pb, MOVTrack *track, uint32_t flag)
{
    int64_t curpos, entryPos;
    int i, index = 0;
    int64_t pos = FUNC1(pb);
    FUNC2(pb, 0); // size
    FUNC3(pb, flag == MOV_SYNC_SAMPLE ? "stss" : "stps");
    FUNC2(pb, 0); // version & flags
    entryPos = FUNC1(pb);
    FUNC2(pb, track->entry); // entry count
    for (i = 0; i < track->entry; i++) {
        if (track->cluster[i].flags & flag) {
            FUNC2(pb, i + 1);
            index++;
        }
    }
    curpos = FUNC1(pb);
    FUNC0(pb, entryPos, SEEK_SET);
    FUNC2(pb, index); // rewrite size
    FUNC0(pb, curpos, SEEK_SET);
    return FUNC4(pb, pos);
}