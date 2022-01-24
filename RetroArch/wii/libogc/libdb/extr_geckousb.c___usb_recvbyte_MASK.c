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
typedef  int u16 ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (int,int*) ; 

__attribute__((used)) static int FUNC1(s32 chn,char *ch)
{
	s32 ret;
	u16 val;

	*ch = 0;
	val = 0xA000;
	ret = FUNC0(chn,&val);
	if(ret==1 && !(val&0x0800)) ret = 0;
	else if(ret==1) *ch = (val&0xff);

	return ret;
}