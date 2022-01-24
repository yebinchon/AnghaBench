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
typedef  int u32 ;
typedef  int /*<<< orphan*/ * RDSTHandler ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ ** rdstHandlers ; 

u32 FUNC3(RDSTHandler handler)
{
	u32 level,i;

	FUNC1(level);

	i = 0;
	for(i=0;i<4;i++) {
		if(rdstHandlers[i]==handler) {
			FUNC2(level);
			return 1;
		}
	}

	for(i=0;i<4;i++) {
		if(rdstHandlers[i]==NULL) {
			rdstHandlers[i] = handler;
			FUNC0(TRUE);
			FUNC2(level);
			return 1;
		}
	}

	FUNC2(level);
	return 0;
}