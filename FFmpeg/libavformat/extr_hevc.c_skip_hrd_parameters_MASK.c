#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(GetBitContext *gb, uint8_t cprms_present_flag,
                                unsigned int max_sub_layers_minus1)
{
    unsigned int i;
    uint8_t sub_pic_hrd_params_present_flag = 0;
    uint8_t nal_hrd_parameters_present_flag = 0;
    uint8_t vcl_hrd_parameters_present_flag = 0;

    if (cprms_present_flag) {
        nal_hrd_parameters_present_flag = FUNC0(gb);
        vcl_hrd_parameters_present_flag = FUNC0(gb);

        if (nal_hrd_parameters_present_flag ||
            vcl_hrd_parameters_present_flag) {
            sub_pic_hrd_params_present_flag = FUNC0(gb);

            if (sub_pic_hrd_params_present_flag)
                /*
                 * tick_divisor_minus2                          u(8)
                 * du_cpb_removal_delay_increment_length_minus1 u(5)
                 * sub_pic_cpb_params_in_pic_timing_sei_flag    u(1)
                 * dpb_output_delay_du_length_minus1            u(5)
                 */
                FUNC2(gb, 19);

            /*
             * bit_rate_scale u(4)
             * cpb_size_scale u(4)
             */
            FUNC2(gb, 8);

            if (sub_pic_hrd_params_present_flag)
                FUNC2(gb, 4); // cpb_size_du_scale

            /*
             * initial_cpb_removal_delay_length_minus1 u(5)
             * au_cpb_removal_delay_length_minus1      u(5)
             * dpb_output_delay_length_minus1          u(5)
             */
            FUNC2(gb, 15);
        }
    }

    for (i = 0; i <= max_sub_layers_minus1; i++) {
        unsigned int cpb_cnt_minus1            = 0;
        uint8_t low_delay_hrd_flag             = 0;
        uint8_t fixed_pic_rate_within_cvs_flag = 0;
        uint8_t fixed_pic_rate_general_flag    = FUNC0(gb);

        if (!fixed_pic_rate_general_flag)
            fixed_pic_rate_within_cvs_flag = FUNC0(gb);

        if (fixed_pic_rate_within_cvs_flag)
            FUNC1(gb); // elemental_duration_in_tc_minus1
        else
            low_delay_hrd_flag = FUNC0(gb);

        if (!low_delay_hrd_flag) {
            cpb_cnt_minus1 = FUNC1(gb);
            if (cpb_cnt_minus1 > 31)
                return AVERROR_INVALIDDATA;
        }

        if (nal_hrd_parameters_present_flag)
            FUNC3(gb, cpb_cnt_minus1,
                                          sub_pic_hrd_params_present_flag);

        if (vcl_hrd_parameters_present_flag)
            FUNC3(gb, cpb_cnt_minus1,
                                          sub_pic_hrd_params_present_flag);
    }

    return 0;
}