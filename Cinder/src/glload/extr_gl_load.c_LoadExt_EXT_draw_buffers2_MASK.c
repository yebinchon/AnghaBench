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
typedef  scalar_t__ PFNGLISENABLEDINDEXEDEXTPROC ;
typedef  scalar_t__ PFNGLGETINTEGERINDEXEDVEXTPROC ;
typedef  scalar_t__ PFNGLGETBOOLEANINDEXEDVEXTPROC ;
typedef  scalar_t__ PFNGLENABLEINDEXEDEXTPROC ;
typedef  scalar_t__ PFNGLDISABLEINDEXEDEXTPROC ;
typedef  scalar_t__ PFNGLCOLORMASKINDEXEDEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glColorMaskIndexedEXT ; 
 scalar_t__ _funcptr_glDisableIndexedEXT ; 
 scalar_t__ _funcptr_glEnableIndexedEXT ; 
 scalar_t__ _funcptr_glGetBooleanIndexedvEXT ; 
 scalar_t__ _funcptr_glGetIntegerIndexedvEXT ; 
 scalar_t__ _funcptr_glIsEnabledIndexedEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glColorMaskIndexedEXT = (PFNGLCOLORMASKINDEXEDEXTPROC)FUNC0("glColorMaskIndexedEXT");
	if(!_funcptr_glColorMaskIndexedEXT) ++numFailed;
	_funcptr_glDisableIndexedEXT = (PFNGLDISABLEINDEXEDEXTPROC)FUNC0("glDisableIndexedEXT");
	if(!_funcptr_glDisableIndexedEXT) ++numFailed;
	_funcptr_glEnableIndexedEXT = (PFNGLENABLEINDEXEDEXTPROC)FUNC0("glEnableIndexedEXT");
	if(!_funcptr_glEnableIndexedEXT) ++numFailed;
	_funcptr_glGetBooleanIndexedvEXT = (PFNGLGETBOOLEANINDEXEDVEXTPROC)FUNC0("glGetBooleanIndexedvEXT");
	if(!_funcptr_glGetBooleanIndexedvEXT) ++numFailed;
	_funcptr_glGetIntegerIndexedvEXT = (PFNGLGETINTEGERINDEXEDVEXTPROC)FUNC0("glGetIntegerIndexedvEXT");
	if(!_funcptr_glGetIntegerIndexedvEXT) ++numFailed;
	_funcptr_glIsEnabledIndexedEXT = (PFNGLISENABLEDINDEXEDEXTPROC)FUNC0("glIsEnabledIndexedEXT");
	if(!_funcptr_glIsEnabledIndexedEXT) ++numFailed;
	return numFailed;
}