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
typedef  int mpc_int_t ;
struct TYPE_3__ {int /*<<< orphan*/ * Y_R; int /*<<< orphan*/ * V_R; int /*<<< orphan*/ * Y_L; int /*<<< orphan*/ * V_L; } ;
typedef  TYPE_1__ mpc_decoder ;
typedef  int /*<<< orphan*/  MPC_SAMPLE_FORMAT ;

/* Variables and functions */
 size_t MPC_V_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void
FUNC2(mpc_decoder* p_dec, MPC_SAMPLE_FORMAT* p_out, mpc_int_t channels)
{
    /********* left channel ********/
    FUNC0(&p_dec->V_L[MPC_V_MEM], p_dec->V_L, 960 * sizeof *p_dec->V_L);
	FUNC1(p_out, &p_dec->V_L[MPC_V_MEM], p_dec->Y_L[0], channels);

    /******** right channel ********/
	if (channels > 1) {
		FUNC0(&p_dec->V_R[MPC_V_MEM], p_dec->V_R, 960 * sizeof *p_dec->V_R);
		FUNC1(p_out + 1, &p_dec->V_R[MPC_V_MEM], p_dec->Y_R[0], channels);
	}
}