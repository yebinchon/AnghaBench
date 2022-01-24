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
struct TYPE_3__ {int /*<<< orphan*/  confLink; } ;
typedef  TYPE_1__ OrbisGlobalConf ;

/* Variables and functions */
 TYPE_1__* myConf ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,uintptr_t*) ; 

int FUNC5(int argc, char *argv[])
{
   int ret;

   FUNC3();

	uintptr_t intptr=0;
	FUNC4(argv[1],"%p",&intptr);
	myConf=(OrbisGlobalConf *)intptr;
	ret=FUNC1(myConf->confLink);
	if(!ret)
	{
		FUNC0();
		return -1;
	}

   return FUNC2(argc, argv, NULL);
}