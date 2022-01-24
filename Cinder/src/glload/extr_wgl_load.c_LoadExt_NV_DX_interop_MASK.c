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
typedef  scalar_t__ PFNWGLDXUNREGISTEROBJECTNVPROC ;
typedef  scalar_t__ PFNWGLDXUNLOCKOBJECTSNVPROC ;
typedef  scalar_t__ PFNWGLDXSETRESOURCESHAREHANDLENVPROC ;
typedef  scalar_t__ PFNWGLDXREGISTEROBJECTNVPROC ;
typedef  scalar_t__ PFNWGLDXOPENDEVICENVPROC ;
typedef  scalar_t__ PFNWGLDXOBJECTACCESSNVPROC ;
typedef  scalar_t__ PFNWGLDXLOCKOBJECTSNVPROC ;
typedef  scalar_t__ PFNWGLDXCLOSEDEVICENVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_wglDXCloseDeviceNV ; 
 scalar_t__ _funcptr_wglDXLockObjectsNV ; 
 scalar_t__ _funcptr_wglDXObjectAccessNV ; 
 scalar_t__ _funcptr_wglDXOpenDeviceNV ; 
 scalar_t__ _funcptr_wglDXRegisterObjectNV ; 
 scalar_t__ _funcptr_wglDXSetResourceShareHandleNV ; 
 scalar_t__ _funcptr_wglDXUnlockObjectsNV ; 
 scalar_t__ _funcptr_wglDXUnregisterObjectNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_wglDXCloseDeviceNV = (PFNWGLDXCLOSEDEVICENVPROC)FUNC0("wglDXCloseDeviceNV");
	if(!_funcptr_wglDXCloseDeviceNV) ++numFailed;
	_funcptr_wglDXLockObjectsNV = (PFNWGLDXLOCKOBJECTSNVPROC)FUNC0("wglDXLockObjectsNV");
	if(!_funcptr_wglDXLockObjectsNV) ++numFailed;
	_funcptr_wglDXObjectAccessNV = (PFNWGLDXOBJECTACCESSNVPROC)FUNC0("wglDXObjectAccessNV");
	if(!_funcptr_wglDXObjectAccessNV) ++numFailed;
	_funcptr_wglDXOpenDeviceNV = (PFNWGLDXOPENDEVICENVPROC)FUNC0("wglDXOpenDeviceNV");
	if(!_funcptr_wglDXOpenDeviceNV) ++numFailed;
	_funcptr_wglDXRegisterObjectNV = (PFNWGLDXREGISTEROBJECTNVPROC)FUNC0("wglDXRegisterObjectNV");
	if(!_funcptr_wglDXRegisterObjectNV) ++numFailed;
	_funcptr_wglDXSetResourceShareHandleNV = (PFNWGLDXSETRESOURCESHAREHANDLENVPROC)FUNC0("wglDXSetResourceShareHandleNV");
	if(!_funcptr_wglDXSetResourceShareHandleNV) ++numFailed;
	_funcptr_wglDXUnlockObjectsNV = (PFNWGLDXUNLOCKOBJECTSNVPROC)FUNC0("wglDXUnlockObjectsNV");
	if(!_funcptr_wglDXUnlockObjectsNV) ++numFailed;
	_funcptr_wglDXUnregisterObjectNV = (PFNWGLDXUNREGISTEROBJECTNVPROC)FUNC0("wglDXUnregisterObjectNV");
	if(!_funcptr_wglDXUnregisterObjectNV) ++numFailed;
	return numFailed;
}