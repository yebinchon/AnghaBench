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
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(GetBitContext *gb, int common_inf_present,
                       int max_sublayers)
{
    int nal_params_present = 0, vcl_params_present = 0;
    int subpic_params_present = 0;
    int i;

    if (common_inf_present) {
        nal_params_present = FUNC2(gb);
        vcl_params_present = FUNC2(gb);

        if (nal_params_present || vcl_params_present) {
            subpic_params_present = FUNC2(gb);

            if (subpic_params_present) {
                FUNC4(gb, 8); // tick_divisor_minus2
                FUNC4(gb, 5); // du_cpb_removal_delay_increment_length_minus1
                FUNC4(gb, 1); // sub_pic_cpb_params_in_pic_timing_sei_flag
                FUNC4(gb, 5); // dpb_output_delay_du_length_minus1
            }

            FUNC4(gb, 4); // bit_rate_scale
            FUNC4(gb, 4); // cpb_size_scale

            if (subpic_params_present)
                FUNC4(gb, 4);  // cpb_size_du_scale

            FUNC4(gb, 5); // initial_cpb_removal_delay_length_minus1
            FUNC4(gb, 5); // au_cpb_removal_delay_length_minus1
            FUNC4(gb, 5); // dpb_output_delay_length_minus1
        }
    }

    for (i = 0; i < max_sublayers; i++) {
        int low_delay = 0;
        unsigned int nb_cpb = 1;
        int fixed_rate = FUNC2(gb);

        if (!fixed_rate)
            fixed_rate = FUNC2(gb);

        if (fixed_rate)
            FUNC3(gb);  // elemental_duration_in_tc_minus1
        else
            low_delay = FUNC2(gb);

        if (!low_delay) {
            nb_cpb = FUNC3(gb) + 1;
            if (nb_cpb < 1 || nb_cpb > 32) {
                FUNC0(NULL, AV_LOG_ERROR, "nb_cpb %d invalid\n", nb_cpb);
                return AVERROR_INVALIDDATA;
            }
        }

        if (nal_params_present)
            FUNC1(gb, nb_cpb, subpic_params_present);
        if (vcl_params_present)
            FUNC1(gb, nb_cpb, subpic_params_present);
    }
    return 0;
}