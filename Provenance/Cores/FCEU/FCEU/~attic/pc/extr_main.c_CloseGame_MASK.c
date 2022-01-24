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
 scalar_t__ CurGame ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ isloaded ; 
 scalar_t__ soundrecfn ; 

int FUNC5(void)
{
	if(!isloaded) return(0);
	FUNC1();
	FUNC0();
	isloaded=0;
	CurGame=0;

	if(soundrecfn)
         FUNC2();

	#ifdef EXTGUI
	GUI_Hide(0);
	#endif
	FUNC4();
	return(1);
}