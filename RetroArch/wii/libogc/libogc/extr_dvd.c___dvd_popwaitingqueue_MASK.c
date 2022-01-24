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
typedef  int /*<<< orphan*/  dvdcmdblk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/ * __dvd_waitingqueue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static dvdcmdblk* FUNC4()
{
	u32 i,level;
	dvdcmdblk *ret = NULL;
	FUNC0(level);
	for(i=0;i<4;i++) {
		if(!FUNC3(&__dvd_waitingqueue[i])) {
			FUNC1(level);
			ret = FUNC2(i);
			return ret;
		}
	}
	FUNC1(level);
	return NULL;
}