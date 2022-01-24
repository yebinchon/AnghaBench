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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 float MEM_POOL_SIZE ; 
 float STRING_POOL_SIZE ; 
 float allocPoint ; 
 float strPoolIndex ; 

void FUNC1() {
	float f;
	FUNC0("Memory/String Pool Info\n");
	FUNC0("----------------\n");
	f = strPoolIndex;
	f /= STRING_POOL_SIZE;
	f *= 100;
	FUNC0("String Pool is %.1f%% full, %i bytes out of %i used.\n", f, strPoolIndex, STRING_POOL_SIZE);
	f = allocPoint;
	f /= MEM_POOL_SIZE;
	f *= 100;
	FUNC0("Memory Pool is %.1f%% full, %i bytes out of %i used.\n", f, allocPoint, MEM_POOL_SIZE);
}