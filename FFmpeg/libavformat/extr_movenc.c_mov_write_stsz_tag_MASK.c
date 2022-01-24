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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {int entry; TYPE_1__* cluster; } ;
struct TYPE_4__ {int size; int entries; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVIOContext *pb, MOVTrack *track)
{
    int equalChunks = 1;
    int i, j, entries = 0, tst = -1, oldtst = -1;

    int64_t pos = FUNC1(pb);
    FUNC2(pb, 0); /* size */
    FUNC3(pb, "stsz");
    FUNC2(pb, 0); /* version & flags */

    for (i = 0; i < track->entry; i++) {
        tst = track->cluster[i].size / track->cluster[i].entries;
        if (oldtst != -1 && tst != oldtst)
            equalChunks = 0;
        oldtst = tst;
        entries += track->cluster[i].entries;
    }
    if (equalChunks && track->entry) {
        int sSize = track->entry ? track->cluster[0].size / track->cluster[0].entries : 0;
        sSize = FUNC0(1, sSize); // adpcm mono case could make sSize == 0
        FUNC2(pb, sSize); // sample size
        FUNC2(pb, entries); // sample count
    } else {
        FUNC2(pb, 0); // sample size
        FUNC2(pb, entries); // sample count
        for (i = 0; i < track->entry; i++) {
            for (j = 0; j < track->cluster[i].entries; j++) {
                FUNC2(pb, track->cluster[i].size /
                          track->cluster[i].entries);
            }
        }
    }
    return FUNC4(pb, pos);
}