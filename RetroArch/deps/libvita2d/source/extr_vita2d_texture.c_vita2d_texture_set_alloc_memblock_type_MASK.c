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
typedef  scalar_t__ SceKernelMemBlockType ;

/* Variables and functions */
 scalar_t__ MemBlockType ; 
 scalar_t__ SCE_KERNEL_MEMBLOCK_TYPE_USER_CDRAM_RW ; 

void FUNC0(SceKernelMemBlockType type)
{
	MemBlockType = (type == 0) ? SCE_KERNEL_MEMBLOCK_TYPE_USER_CDRAM_RW : type;
}