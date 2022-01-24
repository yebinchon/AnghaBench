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
typedef  scalar_t__ PFNGLPROGRAMNAMEDPARAMETER4FVNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMNAMEDPARAMETER4FNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMNAMEDPARAMETER4DVNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMNAMEDPARAMETER4DNVPROC ;
typedef  scalar_t__ PFNGLGETPROGRAMNAMEDPARAMETERFVNVPROC ;
typedef  scalar_t__ PFNGLGETPROGRAMNAMEDPARAMETERDVNVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetProgramNamedParameterdvNV ; 
 scalar_t__ _funcptr_glGetProgramNamedParameterfvNV ; 
 scalar_t__ _funcptr_glProgramNamedParameter4dNV ; 
 scalar_t__ _funcptr_glProgramNamedParameter4dvNV ; 
 scalar_t__ _funcptr_glProgramNamedParameter4fNV ; 
 scalar_t__ _funcptr_glProgramNamedParameter4fvNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetProgramNamedParameterdvNV = (PFNGLGETPROGRAMNAMEDPARAMETERDVNVPROC)FUNC0("glGetProgramNamedParameterdvNV");
	if(!_funcptr_glGetProgramNamedParameterdvNV) ++numFailed;
	_funcptr_glGetProgramNamedParameterfvNV = (PFNGLGETPROGRAMNAMEDPARAMETERFVNVPROC)FUNC0("glGetProgramNamedParameterfvNV");
	if(!_funcptr_glGetProgramNamedParameterfvNV) ++numFailed;
	_funcptr_glProgramNamedParameter4dNV = (PFNGLPROGRAMNAMEDPARAMETER4DNVPROC)FUNC0("glProgramNamedParameter4dNV");
	if(!_funcptr_glProgramNamedParameter4dNV) ++numFailed;
	_funcptr_glProgramNamedParameter4dvNV = (PFNGLPROGRAMNAMEDPARAMETER4DVNVPROC)FUNC0("glProgramNamedParameter4dvNV");
	if(!_funcptr_glProgramNamedParameter4dvNV) ++numFailed;
	_funcptr_glProgramNamedParameter4fNV = (PFNGLPROGRAMNAMEDPARAMETER4FNVPROC)FUNC0("glProgramNamedParameter4fNV");
	if(!_funcptr_glProgramNamedParameter4fNV) ++numFailed;
	_funcptr_glProgramNamedParameter4fvNV = (PFNGLPROGRAMNAMEDPARAMETER4FVNVPROC)FUNC0("glProgramNamedParameter4fvNV");
	if(!_funcptr_glProgramNamedParameter4fvNV) ++numFailed;
	return numFailed;
}