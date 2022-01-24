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
struct TYPE_5__ {int track_id; int nb_frag_info; scalar_t__ data_offset; TYPE_1__* frag_info; } ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ time; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = FUNC0(pb);
    int i;

    FUNC3(pb, 0); /* size placeholder */
    FUNC5(pb, "tfra");
    FUNC1(pb, 1); /* version */
    FUNC2(pb, 0);

    FUNC3(pb, track->track_id);
    FUNC3(pb, 0); /* length of traf/trun/sample num */
    FUNC3(pb, track->nb_frag_info);
    for (i = 0; i < track->nb_frag_info; i++) {
        FUNC4(pb, track->frag_info[i].time);
        FUNC4(pb, track->frag_info[i].offset + track->data_offset);
        FUNC1(pb, 1); /* traf number */
        FUNC1(pb, 1); /* trun number */
        FUNC1(pb, 1); /* sample number */
    }

    return FUNC6(pb, pos);
}