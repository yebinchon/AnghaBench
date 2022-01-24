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

/* Variables and functions */
 int /*<<< orphan*/  MA_OPT_LOADCFG ; 
 int /*<<< orphan*/  MA_OPT_SAVECFG_GAME ; 
 int PicoGameLoaded ; 
 scalar_t__ config_slot ; 
 scalar_t__ config_slot_current ; 
 int /*<<< orphan*/  e_menu_options ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC2(int id, int keys)
{
	static int sel = 0;

	FUNC0(e_menu_options, MA_OPT_SAVECFG_GAME, PicoGameLoaded);
	FUNC0(e_menu_options, MA_OPT_LOADCFG, config_slot != config_slot_current);

	FUNC1(e_menu_options, &sel);

	return 0;
}