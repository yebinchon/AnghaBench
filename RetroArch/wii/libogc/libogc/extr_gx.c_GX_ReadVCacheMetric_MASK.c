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

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int* _cpReg ; 

void FUNC1(u32 *check,u32 *miss,u32 *stall)
{
	*check = FUNC0(_cpReg[41],16,16)|(_cpReg[40]&0xffff);
	*miss = FUNC0(_cpReg[43],16,16)|(_cpReg[42]&0xffff);
	*stall = FUNC0(_cpReg[45],16,16)|(_cpReg[44]&0xffff);
}