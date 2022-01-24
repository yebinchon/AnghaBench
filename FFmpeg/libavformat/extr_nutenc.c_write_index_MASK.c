#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_11__ {int nb_streams; } ;
struct TYPE_10__ {scalar_t__ sp_count; TYPE_7__* avf; TYPE_2__* stream; int /*<<< orphan*/  syncpoints; int /*<<< orphan*/  max_pts; int /*<<< orphan*/  max_pts_tb; } ;
struct TYPE_9__ {scalar_t__* keyframe_pts; } ;
struct TYPE_8__ {int pos; } ;
typedef  TYPE_1__ Syncpoint ;
typedef  TYPE_2__ StreamContext ;
typedef  TYPE_3__ NUTContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ff_nut_sp_pos_cmp ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(NUTContext *nut, AVIOContext *bc) {
    int i;
    Syncpoint dummy= { .pos= 0 };
    Syncpoint *next_node[2] = { NULL };
    int64_t startpos = FUNC4(bc);
    int64_t payload_size;

    FUNC7(nut, nut->max_pts_tb, bc, nut->max_pts);

    FUNC6(bc, nut->sp_count);

    for (i=0; i<nut->sp_count; i++) {
        FUNC3(nut->syncpoints, &dummy, ff_nut_sp_pos_cmp, (void**)next_node);
        FUNC6(bc, (next_node[1]->pos >> 4) - (dummy.pos>>4));
        dummy.pos = next_node[1]->pos;
    }

    for (i=0; i<nut->avf->nb_streams; i++) {
        StreamContext *nus= &nut->stream[i];
        int64_t last_pts= -1;
        int j, k;
        for (j=0; j<nut->sp_count; j++) {
            int flag;
            int n = 0;

            if (j && nus->keyframe_pts[j] == nus->keyframe_pts[j-1]) {
                FUNC1(nut->avf, AV_LOG_WARNING, "Multiple keyframes with same PTS\n");
                nus->keyframe_pts[j] = AV_NOPTS_VALUE;
            }

            flag = (nus->keyframe_pts[j] != AV_NOPTS_VALUE) ^ (j+1 == nut->sp_count);
            for (; j<nut->sp_count && (nus->keyframe_pts[j] != AV_NOPTS_VALUE) == flag; j++)
                n++;

            FUNC6(bc, 1 + 2*flag + 4*n);
            for (k= j - n; k<=j && k<nut->sp_count; k++) {
                if (nus->keyframe_pts[k] == AV_NOPTS_VALUE)
                    continue;
                FUNC0(nus->keyframe_pts[k] > last_pts);
                FUNC6(bc, nus->keyframe_pts[k] - last_pts);
                last_pts = nus->keyframe_pts[k];
            }
        }
    }

    payload_size = FUNC4(bc) - startpos + 8 + 4;

    FUNC5(bc, 8 + payload_size + FUNC2(payload_size) / 7 + 1 + 4*(payload_size > 4096));

    return 0;
}