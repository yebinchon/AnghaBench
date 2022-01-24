#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  void* int64_t ;
struct TYPE_16__ {void* tfrf_offset; } ;
struct TYPE_15__ {scalar_t__ mode; int ism_lookahead; } ;
struct TYPE_14__ {int entry; int nb_frag_info; TYPE_4__* frag_info; TYPE_1__* cluster; } ;
struct TYPE_13__ {scalar_t__ pos; scalar_t__ size; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  TYPE_3__ MOVMuxContext ;
typedef  TYPE_4__ MOVFragmentInfo ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 scalar_t__ MODE_ISM ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_2__*,int,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int FUNC9(AVIOContext *pb, MOVMuxContext *mov,
                              MOVTrack *track, int64_t moof_offset,
                              int moof_size)
{
    int64_t pos = FUNC0(pb);
    int i, start = 0;
    FUNC2(pb, 0); /* size placeholder */
    FUNC3(pb, "traf");

    FUNC5(pb, mov, track, moof_offset);
    if (mov->mode != MODE_ISM)
        FUNC4(pb, track);
    for (i = 1; i < track->entry; i++) {
        if (track->cluster[i].pos != track->cluster[i - 1].pos + track->cluster[i - 1].size) {
            FUNC7(pb, mov, track, moof_size, start, i);
            start = i;
        }
    }
    FUNC7(pb, mov, track, moof_size, start, track->entry);
    if (mov->mode == MODE_ISM) {
        FUNC6(pb, track);

        if (mov->ism_lookahead) {
            int i, size = 16 + 4 + 1 + 16 * mov->ism_lookahead;

            if (track->nb_frag_info > 0) {
                MOVFragmentInfo *info = &track->frag_info[track->nb_frag_info - 1];
                if (!info->tfrf_offset)
                    info->tfrf_offset = FUNC0(pb);
            }
            FUNC2(pb, 8 + size);
            FUNC3(pb, "free");
            for (i = 0; i < size; i++)
                FUNC1(pb, 0);
        }
    }

    return FUNC8(pb, pos);
}