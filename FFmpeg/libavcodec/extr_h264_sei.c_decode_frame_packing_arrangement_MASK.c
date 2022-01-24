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
struct TYPE_3__ {int present; int arrangement_type; void* arrangement_repetition_period; void* quincunx_sampling_flag; void* current_frame_is_frame0_flag; void* content_interpretation_type; void* arrangement_cancel_flag; void* arrangement_id; } ;
typedef  TYPE_1__ H264SEIFramePacking ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(H264SEIFramePacking *h,
                                            GetBitContext *gb)
{
    h->arrangement_id          = FUNC2(gb);
    h->arrangement_cancel_flag = FUNC1(gb);
    h->present = !h->arrangement_cancel_flag;

    if (h->present) {
        h->arrangement_type = FUNC0(gb, 7);
        h->quincunx_sampling_flag         = FUNC1(gb);
        h->content_interpretation_type    = FUNC0(gb, 6);

        // spatial_flipping_flag, frame0_flipped_flag, field_views_flag
        FUNC3(gb, 3);
        h->current_frame_is_frame0_flag = FUNC1(gb);
        // frame0_self_contained_flag, frame1_self_contained_flag
        FUNC3(gb, 2);

        if (!h->quincunx_sampling_flag && h->arrangement_type != 5)
            FUNC3(gb, 16);      // frame[01]_grid_position_[xy]
        FUNC3(gb, 8);           // frame_packing_arrangement_reserved_byte
        h->arrangement_repetition_period = FUNC2(gb);
    }
    FUNC4(gb);                 // frame_packing_arrangement_extension_flag

    return 0;
}