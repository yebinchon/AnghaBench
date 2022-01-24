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
typedef  scalar_t__ PFNWGLFREEMEMORYNVPROC ;
typedef  scalar_t__ PFNWGLALLOCATEMEMORYNVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_wglAllocateMemoryNV ; 
 scalar_t__ _funcptr_wglFreeMemoryNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_wglAllocateMemoryNV = (PFNWGLALLOCATEMEMORYNVPROC)FUNC0("wglAllocateMemoryNV");
	if(!_funcptr_wglAllocateMemoryNV) ++numFailed;
	_funcptr_wglFreeMemoryNV = (PFNWGLFREEMEMORYNVPROC)FUNC0("wglFreeMemoryNV");
	if(!_funcptr_wglFreeMemoryNV) ++numFailed;
	return numFailed;
}