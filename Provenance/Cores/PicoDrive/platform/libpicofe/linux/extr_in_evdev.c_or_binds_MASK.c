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
 int IN_BINDTYPE_COUNT ; 
 size_t FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1(const int *binds, int key, int *result)
{
	int t;
	for (t = 0; t < IN_BINDTYPE_COUNT; t++)
		result[t] |= binds[FUNC0(key, t)];
}