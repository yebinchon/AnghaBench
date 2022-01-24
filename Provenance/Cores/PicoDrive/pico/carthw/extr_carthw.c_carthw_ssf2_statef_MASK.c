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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ssf2_banks ; 

__attribute__((used)) static void FUNC1(void)
{
	int i;
	for (i = 1; i < 8; i++)
		FUNC0(0xa130f0 | (i << 1), ssf2_banks[i]);
}