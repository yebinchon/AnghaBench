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
typedef  int u32 ;
struct __gx_texregion {int tmem_even; int tmem_odd; scalar_t__ ismipmap; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  GXTexRegion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int,int) ; 
 scalar_t__ FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(GXTexRegion *region)
{
	u8 ismipmap;
	s32 cw_e,ch_e,cw_o,ch_o;
	u32 size,tmp,regvalA = 0,regvalB = 0;
	struct __gx_texregion *ptr = (struct __gx_texregion*)region;

	cw_e = (FUNC2(ptr->tmem_even,15,3))-1;
	ch_e = (FUNC2(ptr->tmem_even,18,3))-1;

	cw_o = (FUNC2(ptr->tmem_odd,15,3))-1;
	ch_o = (FUNC2(ptr->tmem_odd,18,3))-1;

	if(cw_e<0) cw_e = 0;
	if(ch_e<0) ch_e = 0;
	if(cw_o<0) cw_o = 0;
	if(ch_o<0) ch_o = 0;

	ismipmap = ptr->ismipmap;

	tmp = size = cw_e+ch_e;
	if(ismipmap) size = (tmp+cw_o+ch_o)-2;
	regvalA = FUNC2((ptr->tmem_even&0x7fff),6,9)|(FUNC1(size,9,4))|(FUNC1(0x66,24,8));

	if(cw_o!=0) {
		size = cw_o+ch_o;
		if(ismipmap) size += (tmp-2);
		regvalB = FUNC2((ptr->tmem_odd&0x7fff),6,9)|(FUNC1(size,9,4))|(FUNC1(0x66,24,8));
	}
	FUNC3();
	FUNC0(regvalA);
	if(cw_o!=0) FUNC0(regvalB);
	FUNC3();
}