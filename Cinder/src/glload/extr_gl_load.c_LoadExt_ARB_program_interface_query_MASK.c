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
typedef  scalar_t__ PFNGLGETPROGRAMRESOURCENAMEPROC ;
typedef  scalar_t__ PFNGLGETPROGRAMRESOURCELOCATIONPROC ;
typedef  scalar_t__ PFNGLGETPROGRAMRESOURCELOCATIONINDEXPROC ;
typedef  scalar_t__ PFNGLGETPROGRAMRESOURCEIVPROC ;
typedef  scalar_t__ PFNGLGETPROGRAMRESOURCEINDEXPROC ;
typedef  scalar_t__ PFNGLGETPROGRAMINTERFACEIVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetProgramInterfaceiv ; 
 scalar_t__ _funcptr_glGetProgramResourceIndex ; 
 scalar_t__ _funcptr_glGetProgramResourceLocation ; 
 scalar_t__ _funcptr_glGetProgramResourceLocationIndex ; 
 scalar_t__ _funcptr_glGetProgramResourceName ; 
 scalar_t__ _funcptr_glGetProgramResourceiv ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetProgramInterfaceiv = (PFNGLGETPROGRAMINTERFACEIVPROC)FUNC0("glGetProgramInterfaceiv");
	if(!_funcptr_glGetProgramInterfaceiv) ++numFailed;
	_funcptr_glGetProgramResourceIndex = (PFNGLGETPROGRAMRESOURCEINDEXPROC)FUNC0("glGetProgramResourceIndex");
	if(!_funcptr_glGetProgramResourceIndex) ++numFailed;
	_funcptr_glGetProgramResourceLocation = (PFNGLGETPROGRAMRESOURCELOCATIONPROC)FUNC0("glGetProgramResourceLocation");
	if(!_funcptr_glGetProgramResourceLocation) ++numFailed;
	_funcptr_glGetProgramResourceLocationIndex = (PFNGLGETPROGRAMRESOURCELOCATIONINDEXPROC)FUNC0("glGetProgramResourceLocationIndex");
	if(!_funcptr_glGetProgramResourceLocationIndex) ++numFailed;
	_funcptr_glGetProgramResourceName = (PFNGLGETPROGRAMRESOURCENAMEPROC)FUNC0("glGetProgramResourceName");
	if(!_funcptr_glGetProgramResourceName) ++numFailed;
	_funcptr_glGetProgramResourceiv = (PFNGLGETPROGRAMRESOURCEIVPROC)FUNC0("glGetProgramResourceiv");
	if(!_funcptr_glGetProgramResourceiv) ++numFailed;
	return numFailed;
}