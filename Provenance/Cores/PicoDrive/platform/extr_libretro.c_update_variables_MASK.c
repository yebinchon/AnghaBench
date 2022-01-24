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
struct retro_variable {char* key; int /*<<< orphan*/ * value; } ;

/* Variables and functions */
 int /*<<< orphan*/  POPT_DIS_SPRITE_LIM ; 
 int /*<<< orphan*/  POPT_EN_DRC ; 
 int /*<<< orphan*/  POPT_EN_MCD_RAMCART ; 
 int /*<<< orphan*/  PicoOpt ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RETRO_ENVIRONMENT_GET_VARIABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct retro_variable*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
	struct retro_variable var;

	var.value = NULL;
	var.key = "picodrive_input1";
	if (FUNC1(RETRO_ENVIRONMENT_GET_VARIABLE, &var) && var.value)
		FUNC0(0, FUNC2(var.value));

	var.value = NULL;
	var.key = "picodrive_input2";
	if (FUNC1(RETRO_ENVIRONMENT_GET_VARIABLE, &var) && var.value)
		FUNC0(1, FUNC2(var.value));

	var.value = NULL;
	var.key = "picodrive_sprlim";
	if (FUNC1(RETRO_ENVIRONMENT_GET_VARIABLE, &var) && var.value) {
		if (FUNC3(var.value, "enabled") == 0)
			PicoOpt |= POPT_DIS_SPRITE_LIM;
		else
			PicoOpt &= ~POPT_DIS_SPRITE_LIM;
	}

	var.value = NULL;
	var.key = "picodrive_ramcart";
	if (FUNC1(RETRO_ENVIRONMENT_GET_VARIABLE, &var) && var.value) {
		if (FUNC3(var.value, "enabled") == 0)
			PicoOpt |= POPT_EN_MCD_RAMCART;
		else
			PicoOpt &= ~POPT_EN_MCD_RAMCART;
	}

#ifdef DRC_SH2
	var.value = NULL;
	var.key = "picodrive_drc";
	if (environ_cb(RETRO_ENVIRONMENT_GET_VARIABLE, &var) && var.value) {
		if (strcmp(var.value, "enabled") == 0)
			PicoOpt |= POPT_EN_DRC;
		else
			PicoOpt &= ~POPT_EN_DRC;
	}
#endif
}