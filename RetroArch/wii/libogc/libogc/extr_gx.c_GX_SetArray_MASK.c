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

/* Variables and functions */
 scalar_t__ GX_LIGHTARRAY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ GX_VA_NBT ; 
 scalar_t__ GX_VA_NRM ; 
 scalar_t__ GX_VA_POS ; 
 scalar_t__ FUNC1 (void*) ; 

void FUNC2(u32 attr,void *ptr,u8 stride)
{
	u32 idx = 0;

	if(attr==GX_VA_NBT) attr = GX_VA_NRM;
	if(attr>=GX_VA_POS && attr<=GX_LIGHTARRAY) {
		idx = attr-GX_VA_POS;
		FUNC0((0xA0+idx),(u32)FUNC1(ptr));
		FUNC0((0xB0+idx),(u32)stride);
	}
}