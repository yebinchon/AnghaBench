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
typedef  scalar_t__ uint8_t ;
struct TYPE_3__ {int parallelismType; } ;
typedef  TYPE_1__ HEVCDecoderConfigurationRecord ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(GetBitContext *gb,
                          HEVCDecoderConfigurationRecord *hvcc)
{
    uint8_t tiles_enabled_flag, entropy_coding_sync_enabled_flag;

    FUNC2(gb); // pps_pic_parameter_set_id
    FUNC2(gb); // pps_seq_parameter_set_id

    /*
     * dependent_slice_segments_enabled_flag u(1)
     * output_flag_present_flag              u(1)
     * num_extra_slice_header_bits           u(3)
     * sign_data_hiding_enabled_flag         u(1)
     * cabac_init_present_flag               u(1)
     */
    FUNC3(gb, 7);

    FUNC2(gb); // num_ref_idx_l0_default_active_minus1
    FUNC2(gb); // num_ref_idx_l1_default_active_minus1
    FUNC1(gb); // init_qp_minus26

    /*
     * constrained_intra_pred_flag u(1)
     * transform_skip_enabled_flag u(1)
     */
    FUNC3(gb, 2);

    if (FUNC0(gb))          // cu_qp_delta_enabled_flag
        FUNC2(gb); // diff_cu_qp_delta_depth

    FUNC1(gb); // pps_cb_qp_offset
    FUNC1(gb); // pps_cr_qp_offset

    /*
     * pps_slice_chroma_qp_offsets_present_flag u(1)
     * weighted_pred_flag               u(1)
     * weighted_bipred_flag             u(1)
     * transquant_bypass_enabled_flag   u(1)
     */
    FUNC3(gb, 4);

    tiles_enabled_flag               = FUNC0(gb);
    entropy_coding_sync_enabled_flag = FUNC0(gb);

    if (entropy_coding_sync_enabled_flag && tiles_enabled_flag)
        hvcc->parallelismType = 0; // mixed-type parallel decoding
    else if (entropy_coding_sync_enabled_flag)
        hvcc->parallelismType = 3; // wavefront-based parallel decoding
    else if (tiles_enabled_flag)
        hvcc->parallelismType = 2; // tile-based parallel decoding
    else
        hvcc->parallelismType = 1; // slice-based parallel decoding

    /* nothing useful for hvcC past this point */
    return 0;
}