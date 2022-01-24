#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int enabled; char* name; int /*<<< orphan*/ * data; } ;
struct TYPE_7__ {int /*<<< orphan*/ * cpu_clock_set; int /*<<< orphan*/ * gamma_set; int /*<<< orphan*/ * hwfilters; int /*<<< orphan*/ * vout_methods; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OPT2_DYNARECS ; 
 int /*<<< orphan*/  MA_OPT2_GAMMA ; 
 int /*<<< orphan*/  MA_OPT3_FILTERING ; 
 int /*<<< orphan*/  MA_OPT_CPU_CLOCKS ; 
 int /*<<< orphan*/  MA_OPT_VOUT_MODE ; 
 TYPE_2__* e_menu_adv_options ; 
 TYPE_2__* e_menu_gfx_options ; 
 TYPE_2__* e_menu_options ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ plat_target ; 

void FUNC3(void)
{
	int i;

	FUNC2();

	i = 0;
#if defined(_SVP_DRC) || defined(DRC_SH2)
	i = 1;
#endif
	FUNC0(e_menu_adv_options, MA_OPT2_DYNARECS, i);

	i = FUNC1(e_menu_gfx_options, MA_OPT_VOUT_MODE);
	e_menu_gfx_options[i].data = plat_target.vout_methods;
	FUNC0(e_menu_gfx_options, MA_OPT_VOUT_MODE,
		plat_target.vout_methods != NULL);

	i = FUNC1(e_menu_gfx_options, MA_OPT3_FILTERING);
	e_menu_gfx_options[i].data = plat_target.hwfilters;
	FUNC0(e_menu_gfx_options, MA_OPT3_FILTERING,
		plat_target.hwfilters != NULL);

	FUNC0(e_menu_gfx_options, MA_OPT2_GAMMA,
                plat_target.gamma_set != NULL);

	i = FUNC1(e_menu_options, MA_OPT_CPU_CLOCKS);
	e_menu_options[i].enabled = 0;
	if (plat_target.cpu_clock_set != NULL) {
		e_menu_options[i].name = "CPU clock";
		e_menu_options[i].enabled = 1;
	}
}