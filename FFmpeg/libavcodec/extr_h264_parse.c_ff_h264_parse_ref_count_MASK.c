#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* ref_count; } ;
typedef  TYPE_1__ PPS ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int AV_PICTURE_TYPE_B ; 
 int AV_PICTURE_TYPE_I ; 
 int PICT_FRAME ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,int,unsigned int,...) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(int *plist_count, int ref_count[2],
                            GetBitContext *gb, const PPS *pps,
                            int slice_type_nos, int picture_structure, void *logctx)
{
    int list_count;
    int num_ref_idx_active_override_flag;

    // set defaults, might be overridden a few lines later
    ref_count[0] = pps->ref_count[0];
    ref_count[1] = pps->ref_count[1];

    if (slice_type_nos != AV_PICTURE_TYPE_I) {
        unsigned max[2];
        max[0] = max[1] = picture_structure == PICT_FRAME ? 15 : 31;

        num_ref_idx_active_override_flag = FUNC1(gb);

        if (num_ref_idx_active_override_flag) {
            ref_count[0] = FUNC2(gb) + 1;
            if (slice_type_nos == AV_PICTURE_TYPE_B) {
                ref_count[1] = FUNC2(gb) + 1;
            } else
                // full range is spec-ok in this case, even for frames
                ref_count[1] = 1;
        }

        if (slice_type_nos == AV_PICTURE_TYPE_B)
            list_count = 2;
        else
            list_count = 1;

        if (ref_count[0] - 1 > max[0] || (list_count == 2 && (ref_count[1] - 1 > max[1]))) {
            FUNC0(logctx, AV_LOG_ERROR, "reference overflow %u > %u or %u > %u\n",
                   ref_count[0] - 1, max[0], ref_count[1] - 1, max[1]);
            ref_count[0] = ref_count[1] = 0;
            *plist_count = 0;
            goto fail;
        } else if (ref_count[1] - 1 > max[1]) {
            FUNC0(logctx, AV_LOG_DEBUG, "reference overflow %u > %u \n",
                   ref_count[1] - 1, max[1]);
            ref_count[1] = 0;
        }

    } else {
        list_count   = 0;
        ref_count[0] = ref_count[1] = 0;
    }

    *plist_count = list_count;

    return 0;
fail:
    *plist_count = 0;
    ref_count[0] = 0;
    ref_count[1] = 0;
    return AVERROR_INVALIDDATA;
}