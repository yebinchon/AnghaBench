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
typedef  scalar_t__ PFNGLPROGRAMPARAMETERIPROC ;
typedef  scalar_t__ PFNGLPROGRAMBINARYPROC ;
typedef  scalar_t__ PFNGLGETPROGRAMBINARYPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetProgramBinary ; 
 scalar_t__ _funcptr_glProgramBinary ; 
 scalar_t__ _funcptr_glProgramParameteri ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetProgramBinary = (PFNGLGETPROGRAMBINARYPROC)FUNC0("glGetProgramBinary");
	if(!_funcptr_glGetProgramBinary) ++numFailed;
	_funcptr_glProgramBinary = (PFNGLPROGRAMBINARYPROC)FUNC0("glProgramBinary");
	if(!_funcptr_glProgramBinary) ++numFailed;
	_funcptr_glProgramParameteri = (PFNGLPROGRAMPARAMETERIPROC)FUNC0("glProgramParameteri");
	if(!_funcptr_glProgramParameteri) ++numFailed;
	return numFailed;
}