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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Cmd_Echo_f ; 
 int /*<<< orphan*/  Cmd_Exec_f ; 
 int /*<<< orphan*/  Cmd_List_f ; 
 int /*<<< orphan*/  Cmd_Vstr_f ; 
 int /*<<< orphan*/  Cmd_Wait_f ; 

void FUNC1 (void) {
	FUNC0 ("cmdlist",Cmd_List_f);
	FUNC0 ("exec",Cmd_Exec_f);
	FUNC0 ("vstr",Cmd_Vstr_f);
	FUNC0 ("echo",Cmd_Echo_f);
	FUNC0 ("wait", Cmd_Wait_f);
}