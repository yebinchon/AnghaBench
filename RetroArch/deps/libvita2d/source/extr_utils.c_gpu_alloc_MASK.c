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
typedef  scalar_t__ SceUID ;
typedef  scalar_t__ SceKernelMemBlockType ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 scalar_t__ SCE_KERNEL_MEMBLOCK_TYPE_USER_CDRAM_RW ; 
 scalar_t__ FUNC1 (void*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (char*,scalar_t__,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,void**) ; 

void *FUNC4(SceKernelMemBlockType type, unsigned int size, unsigned int alignment, unsigned int attribs, SceUID *uid)
{
	void *mem;

	if (type == SCE_KERNEL_MEMBLOCK_TYPE_USER_CDRAM_RW)
		size = FUNC0(size, 256*1024);
   else
		size = FUNC0(size, 4*1024);

	*uid = FUNC2("gpu_mem", type, size, NULL);

	if (*uid < 0)
		return NULL;

	if (FUNC3(*uid, &mem) < 0)
		return NULL;

	if (FUNC1(mem, size, attribs) < 0)
		return NULL;

	return mem;
}