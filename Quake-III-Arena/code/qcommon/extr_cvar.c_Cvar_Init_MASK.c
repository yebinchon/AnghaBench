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
 int CVAR_ROM ; 
 int CVAR_SYSTEMINFO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  Cvar_List_f ; 
 int /*<<< orphan*/  Cvar_Reset_f ; 
 int /*<<< orphan*/  Cvar_Restart_f ; 
 int /*<<< orphan*/  Cvar_SetA_f ; 
 int /*<<< orphan*/  Cvar_SetS_f ; 
 int /*<<< orphan*/  Cvar_SetU_f ; 
 int /*<<< orphan*/  Cvar_Set_f ; 
 int /*<<< orphan*/  Cvar_Toggle_f ; 
 int /*<<< orphan*/  cvar_cheats ; 

void FUNC2 (void) {
	cvar_cheats = FUNC1("sv_cheats", "1", CVAR_ROM | CVAR_SYSTEMINFO );

	FUNC0 ("toggle", Cvar_Toggle_f);
	FUNC0 ("set", Cvar_Set_f);
	FUNC0 ("sets", Cvar_SetS_f);
	FUNC0 ("setu", Cvar_SetU_f);
	FUNC0 ("seta", Cvar_SetA_f);
	FUNC0 ("reset", Cvar_Reset_f);
	FUNC0 ("cvarlist", Cvar_List_f);
	FUNC0 ("cvar_restart", Cvar_Restart_f);
}