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
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 

int FUNC3(char *arg) {
	if (FUNC2(arg, "-lccdir=", 8) == 0) {
		cpp[0] = FUNC0(&arg[8], "/cpp");
		include[0] = FUNC0("-I", FUNC0(&arg[8], "/include"));
		com[0] = FUNC0(&arg[8], "/rcc");
		ld[17] = FUNC0("-L", &arg[8]);
	} else if (FUNC1(arg, "-g") == 0)
		;
	else if (FUNC1(arg, "-p") == 0)
		ld[12] = "/usr/lib/mcrt1.o";
	else if (FUNC1(arg, "-b") == 0)
		;
	else
		return 0;
	return 1;
}