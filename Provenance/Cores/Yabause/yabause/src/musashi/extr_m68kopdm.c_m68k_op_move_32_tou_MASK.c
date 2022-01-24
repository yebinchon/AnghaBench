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
 int /*<<< orphan*/  AY ; 
 scalar_t__ FLAG_S ; 
 int /*<<< orphan*/  REG_USP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(void)
{
	if(FLAG_S)
	{
		FUNC1();			   /* auto-disable (see m68kcpu.h) */
		REG_USP = AY;
		return;
	}
	FUNC0();
}