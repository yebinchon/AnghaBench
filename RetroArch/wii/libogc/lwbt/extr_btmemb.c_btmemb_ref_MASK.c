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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct memb_blks {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

u8 FUNC2(struct memb_blks *blk,void *ptr)
{
	u8 ref;
	u32 *pref;
	u32 level;

	FUNC0(level);
	pref = ptr-sizeof(u32);
	ref = ++(*pref);
	FUNC1(level);
	return ref;
}