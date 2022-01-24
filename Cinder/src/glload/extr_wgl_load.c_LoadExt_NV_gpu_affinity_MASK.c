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
typedef  scalar_t__ PFNWGLENUMGPUSNVPROC ;
typedef  scalar_t__ PFNWGLENUMGPUSFROMAFFINITYDCNVPROC ;
typedef  scalar_t__ PFNWGLENUMGPUDEVICESNVPROC ;
typedef  scalar_t__ PFNWGLDELETEDCNVPROC ;
typedef  scalar_t__ PFNWGLCREATEAFFINITYDCNVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_wglCreateAffinityDCNV ; 
 scalar_t__ _funcptr_wglDeleteDCNV ; 
 scalar_t__ _funcptr_wglEnumGpuDevicesNV ; 
 scalar_t__ _funcptr_wglEnumGpusFromAffinityDCNV ; 
 scalar_t__ _funcptr_wglEnumGpusNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_wglCreateAffinityDCNV = (PFNWGLCREATEAFFINITYDCNVPROC)FUNC0("wglCreateAffinityDCNV");
	if(!_funcptr_wglCreateAffinityDCNV) ++numFailed;
	_funcptr_wglDeleteDCNV = (PFNWGLDELETEDCNVPROC)FUNC0("wglDeleteDCNV");
	if(!_funcptr_wglDeleteDCNV) ++numFailed;
	_funcptr_wglEnumGpuDevicesNV = (PFNWGLENUMGPUDEVICESNVPROC)FUNC0("wglEnumGpuDevicesNV");
	if(!_funcptr_wglEnumGpuDevicesNV) ++numFailed;
	_funcptr_wglEnumGpusFromAffinityDCNV = (PFNWGLENUMGPUSFROMAFFINITYDCNVPROC)FUNC0("wglEnumGpusFromAffinityDCNV");
	if(!_funcptr_wglEnumGpusFromAffinityDCNV) ++numFailed;
	_funcptr_wglEnumGpusNV = (PFNWGLENUMGPUSNVPROC)FUNC0("wglEnumGpusNV");
	if(!_funcptr_wglEnumGpusNV) ++numFailed;
	return numFailed;
}