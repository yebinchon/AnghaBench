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
typedef  scalar_t__ PFNGLXWAITFORSBCOMLPROC ;
typedef  scalar_t__ PFNGLXWAITFORMSCOMLPROC ;
typedef  scalar_t__ PFNGLXSWAPBUFFERSMSCOMLPROC ;
typedef  scalar_t__ PFNGLXGETSYNCVALUESOMLPROC ;
typedef  scalar_t__ PFNGLXGETMSCRATEOMLPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glXGetMscRateOML ; 
 scalar_t__ _funcptr_glXGetSyncValuesOML ; 
 scalar_t__ _funcptr_glXSwapBuffersMscOML ; 
 scalar_t__ _funcptr_glXWaitForMscOML ; 
 scalar_t__ _funcptr_glXWaitForSbcOML ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glXGetMscRateOML = (PFNGLXGETMSCRATEOMLPROC)FUNC0("glXGetMscRateOML");
	if(!_funcptr_glXGetMscRateOML) ++numFailed;
	_funcptr_glXGetSyncValuesOML = (PFNGLXGETSYNCVALUESOMLPROC)FUNC0("glXGetSyncValuesOML");
	if(!_funcptr_glXGetSyncValuesOML) ++numFailed;
	_funcptr_glXSwapBuffersMscOML = (PFNGLXSWAPBUFFERSMSCOMLPROC)FUNC0("glXSwapBuffersMscOML");
	if(!_funcptr_glXSwapBuffersMscOML) ++numFailed;
	_funcptr_glXWaitForMscOML = (PFNGLXWAITFORMSCOMLPROC)FUNC0("glXWaitForMscOML");
	if(!_funcptr_glXWaitForMscOML) ++numFailed;
	_funcptr_glXWaitForSbcOML = (PFNGLXWAITFORSBCOMLPROC)FUNC0("glXWaitForSbcOML");
	if(!_funcptr_glXWaitForSbcOML) ++numFailed;
	return numFailed;
}