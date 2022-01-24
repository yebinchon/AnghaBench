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
struct TYPE_5__ {int chunkCount; int entry; TYPE_1__* cluster; } ;
struct TYPE_4__ {int samples_in_chunk; int chunkNum; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVIOContext *pb, MOVTrack *track)
{
    int index = 0, oldval = -1, i;
    int64_t entryPos, curpos;

    int64_t pos = FUNC1(pb);
    FUNC2(pb, 0); /* size */
    FUNC3(pb, "stsc");
    FUNC2(pb, 0); // version & flags
    entryPos = FUNC1(pb);
    FUNC2(pb, track->chunkCount); // entry count
    for (i = 0; i < track->entry; i++) {
        if (oldval != track->cluster[i].samples_in_chunk && track->cluster[i].chunkNum) {
            FUNC2(pb, track->cluster[i].chunkNum); // first chunk
            FUNC2(pb, track->cluster[i].samples_in_chunk); // samples per chunk
            FUNC2(pb, 0x1); // sample description index
            oldval = track->cluster[i].samples_in_chunk;
            index++;
        }
    }
    curpos = FUNC1(pb);
    FUNC0(pb, entryPos, SEEK_SET);
    FUNC2(pb, index); // rewrite size
    FUNC0(pb, curpos, SEEK_SET);

    return FUNC4(pb, pos);
}