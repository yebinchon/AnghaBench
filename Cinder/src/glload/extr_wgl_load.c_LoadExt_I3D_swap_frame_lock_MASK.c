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
typedef  scalar_t__ PFNWGLQUERYFRAMELOCKMASTERI3DPROC ;
typedef  scalar_t__ PFNWGLISENABLEDFRAMELOCKI3DPROC ;
typedef  scalar_t__ PFNWGLENABLEFRAMELOCKI3DPROC ;
typedef  scalar_t__ PFNWGLDISABLEFRAMELOCKI3DPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_wglDisableFrameLockI3D ; 
 scalar_t__ _funcptr_wglEnableFrameLockI3D ; 
 scalar_t__ _funcptr_wglIsEnabledFrameLockI3D ; 
 scalar_t__ _funcptr_wglQueryFrameLockMasterI3D ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_wglDisableFrameLockI3D = (PFNWGLDISABLEFRAMELOCKI3DPROC)FUNC0("wglDisableFrameLockI3D");
	if(!_funcptr_wglDisableFrameLockI3D) ++numFailed;
	_funcptr_wglEnableFrameLockI3D = (PFNWGLENABLEFRAMELOCKI3DPROC)FUNC0("wglEnableFrameLockI3D");
	if(!_funcptr_wglEnableFrameLockI3D) ++numFailed;
	_funcptr_wglIsEnabledFrameLockI3D = (PFNWGLISENABLEDFRAMELOCKI3DPROC)FUNC0("wglIsEnabledFrameLockI3D");
	if(!_funcptr_wglIsEnabledFrameLockI3D) ++numFailed;
	_funcptr_wglQueryFrameLockMasterI3D = (PFNWGLQUERYFRAMELOCKMASTERI3DPROC)FUNC0("wglQueryFrameLockMasterI3D");
	if(!_funcptr_wglQueryFrameLockMasterI3D) ++numFailed;
	return numFailed;
}