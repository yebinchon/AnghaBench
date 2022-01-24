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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int vps_max_layers; int vps_max_sub_layers; int vps_temporal_id_nesting_flag; int vps_sub_layer_ordering_info_present_flag; int* vps_max_dec_pic_buffering; int* vps_num_reorder_pics; int* vps_max_latency_increase; int vps_max_layer_id; int vps_num_layer_sets; int vps_timing_info_present_flag; int vps_poc_proportional_to_timing_flag; int vps_num_ticks_poc_diff_one; int vps_num_hrd_parameters; int /*<<< orphan*/  vps_time_scale; int /*<<< orphan*/  vps_num_units_in_tick; int /*<<< orphan*/  ptl; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ HEVCVPS ;

/* Variables and functions */
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC9(HEVCVPS *vps, unsigned int id,
                           uint8_t *buf, int buf_size)
{
    PutBitContext pb;
    int i, data_size;

    FUNC3(&pb, buf, buf_size);
    FUNC4(&pb,  4, id);
    FUNC4(&pb,  2, 3);                               // reserved
    FUNC4(&pb,  6, vps->vps_max_layers - 1);
    FUNC4(&pb,  3, vps->vps_max_sub_layers - 1);
    FUNC4(&pb,  1, vps->vps_temporal_id_nesting_flag);
    FUNC4(&pb, 16, 0xffff);                          // reserved

    FUNC8(&pb, &vps->ptl, vps->vps_max_sub_layers);

    FUNC4(&pb, 1, vps->vps_sub_layer_ordering_info_present_flag);
    for (i = vps->vps_sub_layer_ordering_info_present_flag ? 0 : vps->vps_max_layers - 1;
         i < vps->vps_max_sub_layers; i++) {
        FUNC7(&pb, vps->vps_max_dec_pic_buffering[i] - 1);
        FUNC7(&pb, vps->vps_num_reorder_pics[i]);
        FUNC7(&pb, vps->vps_max_latency_increase[i] + 1);
    }

    FUNC4(&pb, 6, vps->vps_max_layer_id);
    FUNC7(&pb, vps->vps_num_layer_sets - 1);

    if (vps->vps_num_layer_sets > 1) {
        FUNC1(NULL, "Writing layer_id_included_flag");
        return AVERROR_PATCHWELCOME;
    }

    FUNC4(&pb, 1, vps->vps_timing_info_present_flag);
    if (vps->vps_timing_info_present_flag) {
        FUNC5(&pb, vps->vps_num_units_in_tick);
        FUNC5(&pb, vps->vps_time_scale);
        FUNC4(&pb, 1, vps->vps_poc_proportional_to_timing_flag);
        if (vps->vps_poc_proportional_to_timing_flag)
            FUNC7(&pb, vps->vps_num_ticks_poc_diff_one - 1);

        FUNC7(&pb, vps->vps_num_hrd_parameters);
        if (vps->vps_num_hrd_parameters) {
            FUNC1(NULL, "Writing HRD parameters");
            return AVERROR_PATCHWELCOME;
        }
    }

    FUNC4(&pb, 1, 0);    // extension flag

    FUNC4(&pb, 1, 1);    // stop bit
    FUNC0(&pb);

    data_size = FUNC6(&pb) / 8;
    FUNC2(&pb);

    return data_size;
}