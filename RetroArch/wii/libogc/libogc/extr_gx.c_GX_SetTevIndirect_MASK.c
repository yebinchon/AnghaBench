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
typedef  int u8 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 

void FUNC2(u8 tevstage,u8 indtexid,u8 format,u8 bias,u8 mtxid,u8 wrap_s,u8 wrap_t,u8 addprev,u8 utclod,u8 a)
{
	u32 val = (0x10000000|(FUNC1(tevstage,24,4)))|(indtexid&3)|(FUNC1(format,2,2))|(FUNC1(bias,4,3))|(FUNC1(a,7,2))|(FUNC1(mtxid,9,4))|(FUNC1(wrap_s,13,3))|(FUNC1(wrap_t,16,3))|(FUNC1(utclod,19,1))|(FUNC1(addprev,20,1));
	FUNC0(val);
}