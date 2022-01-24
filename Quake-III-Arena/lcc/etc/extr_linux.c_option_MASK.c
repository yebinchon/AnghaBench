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
		cpp[0] = FUNC0(&arg[8], "/gcc/cpp");
		include[0] = FUNC0("-I", FUNC0(&arg[8], "/include"));
		include[1] = FUNC0("-I", FUNC0(&arg[8], "/gcc/include"));
		ld[9]  = FUNC0(&arg[8], "/gcc/crtbegin.o");
		ld[12] = FUNC0("-L", &arg[8]);
		ld[14] = FUNC0("-L", FUNC0(&arg[8], "/gcc"));
		ld[19] = FUNC0(&arg[8], "/gcc/crtend.o");
		com[0] = FUNC0(&arg[8], "/rcc");
	} else if (FUNC1(arg, "-p") == 0 || FUNC1(arg, "-pg") == 0) {
		ld[7] = "/usr/lib/gcrt1.o";
		ld[18] = "-lgmon";
	} else if (FUNC1(arg, "-b") == 0) 
		;
	else if (FUNC1(arg, "-g") == 0)
		;
	else if (FUNC2(arg, "-ld=", 4) == 0)
		ld[0] = &arg[4];
	else if (FUNC1(arg, "-static") == 0) {
	        ld[3] = "-static";
	        ld[4] = "";
	} else
		return 0;
	return 1;
}