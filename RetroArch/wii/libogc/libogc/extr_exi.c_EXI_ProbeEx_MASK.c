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
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__* last_exi_idtime ; 

s32 FUNC1(s32 nChn)
{
	if(FUNC0(nChn)==1) return 1;
	if(last_exi_idtime[nChn]==0) return -1;
	return 0;
}