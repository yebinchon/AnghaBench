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
typedef  int int64_t ;
struct TYPE_6__ {int flags; int nb_streams; TYPE_1__* tracks; } ;
struct TYPE_5__ {scalar_t__ nb_frag_info; } ;
typedef  TYPE_1__ MOVTrack ;
typedef  TYPE_2__ MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FF_MOV_FLAG_ISML ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(AVIOContext *pb, MOVMuxContext *mov)
{
    int64_t pos = FUNC0(pb);
    int i;

    FUNC1(pb, 0); /* size placeholder */
    FUNC2(pb, "mfra");
    /* An empty mfra atom is enough to indicate to the publishing point that
     * the stream has ended. */
    if (mov->flags & FF_MOV_FLAG_ISML)
        return FUNC4(pb, pos);

    for (i = 0; i < mov->nb_streams; i++) {
        MOVTrack *track = &mov->tracks[i];
        if (track->nb_frag_info)
            FUNC3(pb, track);
    }

    FUNC1(pb, 16);
    FUNC2(pb, "mfro");
    FUNC1(pb, 0); /* version + flags */
    FUNC1(pb, FUNC0(pb) + 4 - pos);

    return FUNC4(pb, pos);
}