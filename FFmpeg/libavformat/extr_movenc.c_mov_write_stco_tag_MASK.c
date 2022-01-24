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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_6__ {int entry; scalar_t__ data_offset; TYPE_1__* cluster; scalar_t__ chunkCount; } ;
struct TYPE_5__ {scalar_t__ pos; int /*<<< orphan*/  chunkNum; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVIOContext *pb, MOVTrack *track)
{
    int i;
    int mode64 = FUNC3(track); // use 32 bit size variant if possible
    int64_t pos = FUNC0(pb);
    FUNC1(pb, 0); /* size */
    if (mode64)
        FUNC4(pb, "co64");
    else
        FUNC4(pb, "stco");
    FUNC1(pb, 0); /* version & flags */
    FUNC1(pb, track->chunkCount); /* entry count */
    for (i = 0; i < track->entry; i++) {
        if (!track->cluster[i].chunkNum)
            continue;
        if (mode64 == 1)
            FUNC2(pb, track->cluster[i].pos + track->data_offset);
        else
            FUNC1(pb, track->cluster[i].pos + track->data_offset);
    }
    return FUNC5(pb, pos);
}