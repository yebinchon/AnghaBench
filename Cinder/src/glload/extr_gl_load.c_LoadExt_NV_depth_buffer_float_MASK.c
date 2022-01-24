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
typedef  scalar_t__ PFNGLDEPTHRANGEDNVPROC ;
typedef  scalar_t__ PFNGLDEPTHBOUNDSDNVPROC ;
typedef  scalar_t__ PFNGLCLEARDEPTHDNVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glClearDepthdNV ; 
 scalar_t__ _funcptr_glDepthBoundsdNV ; 
 scalar_t__ _funcptr_glDepthRangedNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glClearDepthdNV = (PFNGLCLEARDEPTHDNVPROC)FUNC0("glClearDepthdNV");
	if(!_funcptr_glClearDepthdNV) ++numFailed;
	_funcptr_glDepthBoundsdNV = (PFNGLDEPTHBOUNDSDNVPROC)FUNC0("glDepthBoundsdNV");
	if(!_funcptr_glDepthBoundsdNV) ++numFailed;
	_funcptr_glDepthRangedNV = (PFNGLDEPTHRANGEDNVPROC)FUNC0("glDepthRangedNV");
	if(!_funcptr_glDepthRangedNV) ++numFailed;
	return numFailed;
}