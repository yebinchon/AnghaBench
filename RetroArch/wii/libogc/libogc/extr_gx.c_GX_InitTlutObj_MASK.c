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
typedef  int /*<<< orphan*/  u16 ;
struct __gx_tlutobj {int tlut_fmt; int tlut_maddr; int /*<<< orphan*/  tlut_nentries; } ;
typedef  int /*<<< orphan*/  GXTlutObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC4(GXTlutObj *obj,void *lut,u8 fmt,u16 entries)
{
	struct __gx_tlutobj *ptr = (struct __gx_tlutobj*)obj;

	FUNC3(obj,0,sizeof(GXTlutObj));

	ptr->tlut_fmt = FUNC1(fmt,10,2);
	ptr->tlut_maddr = (ptr->tlut_maddr&~0x00ffffff)|(FUNC2(FUNC0(lut),5,24));
	ptr->tlut_maddr = (ptr->tlut_maddr&~0xff000000)|(FUNC1(0x64,24,8));
	ptr->tlut_nentries = entries;
}