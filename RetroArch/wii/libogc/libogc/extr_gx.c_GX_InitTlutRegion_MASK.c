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
struct __gx_tlutregion {int tmem_addr_conf; } ;
typedef  int /*<<< orphan*/  GXTlutRegion ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int,int,int) ; 

void FUNC2(GXTlutRegion *region,u32 tmem_addr,u8 tlut_sz)
{
	struct __gx_tlutregion *ptr = (struct __gx_tlutregion*)region;

	tmem_addr -= 0x80000;

	ptr->tmem_addr_conf = 0;
	ptr->tmem_addr_conf = (ptr->tmem_addr_conf&~0x3ff)|(FUNC1(tmem_addr,9,10));
	ptr->tmem_addr_conf = (ptr->tmem_addr_conf&~0x1FFC00)|(FUNC0(tlut_sz,10,10));
	ptr->tmem_addr_conf = (ptr->tmem_addr_conf&~0xff000000)|(FUNC0(0x65,24,8));
}