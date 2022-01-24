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
 int CONTENTS_LAVA ; 
 int CONTENTS_SLIME ; 
 int CONTENTS_SOLID ; 
 int CONTENTS_WATER ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

int FUNC2(char *name)
{
	if (!FUNC0(name, "clip")) return CONTENTS_SOLID;
	if (name[0] == '*')
	{
		if (!FUNC1(name+1,"lava",4)) return CONTENTS_LAVA;
		else if (!FUNC1(name+1,"slime",5)) return CONTENTS_SLIME;
		else return CONTENTS_WATER;
	} //end if
	else if (!FUNC1(name, "sky", 3)) return CONTENTS_SOLID;
	else return CONTENTS_SOLID;
}