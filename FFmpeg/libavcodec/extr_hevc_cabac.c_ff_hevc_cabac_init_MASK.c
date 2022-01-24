#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  cc; } ;
struct TYPE_14__ {TYPE_3__* sps; TYPE_2__* pps; } ;
struct TYPE_11__ {size_t slice_ctb_addr_rs; scalar_t__ dependent_slice_segment_flag; int /*<<< orphan*/  first_slice_in_pic_flag; } ;
struct TYPE_15__ {int threads_number; TYPE_4__ ps; TYPE_8__* HEVClc; TYPE_1__ sh; } ;
struct TYPE_13__ {int ctb_width; } ;
struct TYPE_12__ {int* ctb_addr_rs_to_ts; scalar_t__* tile_id; scalar_t__ entropy_coding_sync_enabled_flag; scalar_t__ tiles_enabled_flag; } ;
typedef  TYPE_5__ HEVCContext ;

/* Variables and functions */
 int FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 

int FUNC5(HEVCContext *s, int ctb_addr_ts)
{
    if (ctb_addr_ts == s->ps.pps->ctb_addr_rs_to_ts[s->sh.slice_ctb_addr_rs]) {
        int ret = FUNC0(s);
        if (ret < 0)
            return ret;
        if (s->sh.dependent_slice_segment_flag == 0 ||
            (s->ps.pps->tiles_enabled_flag &&
             s->ps.pps->tile_id[ctb_addr_ts] != s->ps.pps->tile_id[ctb_addr_ts - 1]))
            FUNC1(s);

        if (!s->sh.first_slice_in_pic_flag &&
            s->ps.pps->entropy_coding_sync_enabled_flag) {
            if (ctb_addr_ts % s->ps.sps->ctb_width == 0) {
                if (s->ps.sps->ctb_width == 1)
                    FUNC1(s);
                else if (s->sh.dependent_slice_segment_flag == 1)
                    FUNC4(s);
            }
        }
    } else {
        if (s->ps.pps->tiles_enabled_flag &&
            s->ps.pps->tile_id[ctb_addr_ts] != s->ps.pps->tile_id[ctb_addr_ts - 1]) {
            int ret;
            if (s->threads_number == 1)
                ret = FUNC2(s->HEVClc);
            else {
                ret = FUNC0(s);
            }
            if (ret < 0)
                return ret;
            FUNC1(s);
        }
        if (s->ps.pps->entropy_coding_sync_enabled_flag) {
            if (ctb_addr_ts % s->ps.sps->ctb_width == 0) {
                int ret;
                FUNC3(&s->HEVClc->cc);
                if (s->threads_number == 1)
                    ret = FUNC2(s->HEVClc);
                else {
                    ret = FUNC0(s);
                }
                if (ret < 0)
                    return ret;

                if (s->ps.sps->ctb_width == 1)
                    FUNC1(s);
                else
                    FUNC4(s);
            }
        }
    }
    return 0;
}