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

/* Variables and functions */
 int* _cpReg ; 
 int _gxgpstatus ; 

void FUNC0(u8 *overhi,u8 *underlow,u8 *readIdle,u8 *cmdIdle,u8 *brkpt)
{
	_gxgpstatus = _cpReg[0];
	*overhi = !!(_gxgpstatus&1);
	*underlow = !!(_gxgpstatus&2);
	*readIdle = !!(_gxgpstatus&4);
	*cmdIdle = !!(_gxgpstatus&8);
	*brkpt = !!(_gxgpstatus&16);
}