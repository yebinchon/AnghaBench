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
typedef  int /*<<< orphan*/  FCEUGI ;

/* Variables and functions */
 int /*<<< orphan*/  CloseStuff ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int inited ; 

__attribute__((used)) static int FUNC6(FCEUGI *gi)
{
	#ifndef WIN32
	FUNC5(CloseStuff);
	#endif

	/* Initialize video before all else, due to some wacko dependencies
	   in the SexyAL code(DirectSound) that need to be fixed.
	*/

        if(!FUNC4(gi)) return 0;
        inited|=4;

	if(FUNC3(gi))
	 inited|=1;

	if(FUNC0())
	 inited|=2;

	if(!FUNC1()) return 0;
	inited|=8;

	FUNC2();
	return 1;
}