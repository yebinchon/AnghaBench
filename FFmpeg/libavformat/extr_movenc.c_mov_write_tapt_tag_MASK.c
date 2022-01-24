#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
typedef  int int32_t ;
struct TYPE_7__ {TYPE_2__* par; } ;
struct TYPE_5__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_6__ {int width; int height; TYPE_1__ sample_aspect_ratio; } ;
typedef  TYPE_3__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVIOContext *pb, MOVTrack *track)
{
    int32_t width = FUNC0(track->par->sample_aspect_ratio.num, track->par->width,
                               track->par->sample_aspect_ratio.den);

    int64_t pos = FUNC1(pb);

    FUNC2(pb, 0); /* size */
    FUNC3(pb, "tapt");

    FUNC2(pb, 20);
    FUNC3(pb, "clef");
    FUNC2(pb, 0);
    FUNC2(pb, width << 16);
    FUNC2(pb, track->par->height << 16);

    FUNC2(pb, 20);
    FUNC3(pb, "prof");
    FUNC2(pb, 0);
    FUNC2(pb, width << 16);
    FUNC2(pb, track->par->height << 16);

    FUNC2(pb, 20);
    FUNC3(pb, "enof");
    FUNC2(pb, 0);
    FUNC2(pb, track->par->width << 16);
    FUNC2(pb, track->par->height << 16);

    return FUNC4(pb, pos);
}