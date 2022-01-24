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
typedef  size_t int32 ;

/* Variables and functions */
 double PI ; 
 scalar_t__ PM_AMP ; 
 scalar_t__ PM_DEPTH ; 
 size_t PM_PG_WIDTH ; 
 size_t* pmtable ; 
 double FUNC0 (int,double) ; 
 double FUNC1 (double) ; 

__attribute__((used)) static void FUNC2(void) {
	int32 i;

	for (i = 0; i < PM_PG_WIDTH; i++)
		pmtable[i] = (int32)((double)PM_AMP * FUNC0(2, (double)PM_DEPTH * FUNC1(2.0 * PI * i / PM_PG_WIDTH) / 1200));
}