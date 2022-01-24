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
 char** com ; 
 char* FUNC0 (char*,char*) ; 
 char** cpp ; 
 char** include ; 
 char** ld ; 
 char* FUNC1 (char*,char,char) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

int FUNC5(char *arg) {
	if (FUNC4(arg, "-lccdir=", 8) == 0) {
		arg = FUNC1(arg + 8, '/', '\\');
		if (arg[FUNC3(arg)-1] == '\\')
			arg[FUNC3(arg)-1] = '\0';
		cpp[0] = FUNC0(arg, "\\cpp.exe");
		include[0] = FUNC0("-I", FUNC0(arg, "\\include"));
		com[0] = FUNC0(arg, "\\rcc.exe");
		ld[8] = FUNC0(arg, "\\liblcc.lib");
	} else if (FUNC2(arg, "-b") == 0)
		;
	else if (FUNC4(arg, "-ld=", 4) == 0)
		ld[0] = &arg[4];
	else
		return 0;
	return 1;
}