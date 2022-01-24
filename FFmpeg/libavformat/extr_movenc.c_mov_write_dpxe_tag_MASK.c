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
struct TYPE_5__ {TYPE_1__* par; } ;
struct TYPE_4__ {int extradata_size; int* extradata; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,char*,int) ; 

__attribute__((used)) static int FUNC3(AVIOContext *pb, MOVTrack *track)
{
    FUNC0(pb, 12);
    FUNC1(pb, "DpxE");
    if (track->par->extradata_size >= 12 &&
        !FUNC2(&track->par->extradata[4], "DpxE", 4)) {
        FUNC0(pb, track->par->extradata[11]);
    } else {
        FUNC0(pb, 1);
    }
    return 0;
}