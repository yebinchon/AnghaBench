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
typedef  int u64 ;
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static __inline__ u32 FUNC1(u64 bit)
{
	u32 hi    = (u32)(bit>>32);
	u32 lo    = (u32)(bit&-1);
	u32 value = FUNC0(hi);
	if(value>=32) value += FUNC0(lo);

	return value;
}