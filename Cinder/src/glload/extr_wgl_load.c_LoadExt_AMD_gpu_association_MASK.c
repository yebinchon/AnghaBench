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
typedef  scalar_t__ PFNWGLMAKEASSOCIATEDCONTEXTCURRENTAMDPROC ;
typedef  scalar_t__ PFNWGLGETGPUINFOAMDPROC ;
typedef  scalar_t__ PFNWGLGETGPUIDSAMDPROC ;
typedef  scalar_t__ PFNWGLGETCURRENTASSOCIATEDCONTEXTAMDPROC ;
typedef  scalar_t__ PFNWGLGETCONTEXTGPUIDAMDPROC ;
typedef  scalar_t__ PFNWGLDELETEASSOCIATEDCONTEXTAMDPROC ;
typedef  scalar_t__ PFNWGLCREATEASSOCIATEDCONTEXTATTRIBSAMDPROC ;
typedef  scalar_t__ PFNWGLCREATEASSOCIATEDCONTEXTAMDPROC ;
typedef  scalar_t__ PFNWGLBLITCONTEXTFRAMEBUFFERAMDPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_wglBlitContextFramebufferAMD ; 
 scalar_t__ _funcptr_wglCreateAssociatedContextAMD ; 
 scalar_t__ _funcptr_wglCreateAssociatedContextAttribsAMD ; 
 scalar_t__ _funcptr_wglDeleteAssociatedContextAMD ; 
 scalar_t__ _funcptr_wglGetContextGPUIDAMD ; 
 scalar_t__ _funcptr_wglGetCurrentAssociatedContextAMD ; 
 scalar_t__ _funcptr_wglGetGPUIDsAMD ; 
 scalar_t__ _funcptr_wglGetGPUInfoAMD ; 
 scalar_t__ _funcptr_wglMakeAssociatedContextCurrentAMD ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_wglBlitContextFramebufferAMD = (PFNWGLBLITCONTEXTFRAMEBUFFERAMDPROC)FUNC0("wglBlitContextFramebufferAMD");
	if(!_funcptr_wglBlitContextFramebufferAMD) ++numFailed;
	_funcptr_wglCreateAssociatedContextAMD = (PFNWGLCREATEASSOCIATEDCONTEXTAMDPROC)FUNC0("wglCreateAssociatedContextAMD");
	if(!_funcptr_wglCreateAssociatedContextAMD) ++numFailed;
	_funcptr_wglCreateAssociatedContextAttribsAMD = (PFNWGLCREATEASSOCIATEDCONTEXTATTRIBSAMDPROC)FUNC0("wglCreateAssociatedContextAttribsAMD");
	if(!_funcptr_wglCreateAssociatedContextAttribsAMD) ++numFailed;
	_funcptr_wglDeleteAssociatedContextAMD = (PFNWGLDELETEASSOCIATEDCONTEXTAMDPROC)FUNC0("wglDeleteAssociatedContextAMD");
	if(!_funcptr_wglDeleteAssociatedContextAMD) ++numFailed;
	_funcptr_wglGetContextGPUIDAMD = (PFNWGLGETCONTEXTGPUIDAMDPROC)FUNC0("wglGetContextGPUIDAMD");
	if(!_funcptr_wglGetContextGPUIDAMD) ++numFailed;
	_funcptr_wglGetCurrentAssociatedContextAMD = (PFNWGLGETCURRENTASSOCIATEDCONTEXTAMDPROC)FUNC0("wglGetCurrentAssociatedContextAMD");
	if(!_funcptr_wglGetCurrentAssociatedContextAMD) ++numFailed;
	_funcptr_wglGetGPUIDsAMD = (PFNWGLGETGPUIDSAMDPROC)FUNC0("wglGetGPUIDsAMD");
	if(!_funcptr_wglGetGPUIDsAMD) ++numFailed;
	_funcptr_wglGetGPUInfoAMD = (PFNWGLGETGPUINFOAMDPROC)FUNC0("wglGetGPUInfoAMD");
	if(!_funcptr_wglGetGPUInfoAMD) ++numFailed;
	_funcptr_wglMakeAssociatedContextCurrentAMD = (PFNWGLMAKEASSOCIATEDCONTEXTCURRENTAMDPROC)FUNC0("wglMakeAssociatedContextCurrentAMD");
	if(!_funcptr_wglMakeAssociatedContextCurrentAMD) ++numFailed;
	return numFailed;
}