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
typedef  scalar_t__ PFNGLBLENDFUNCSEPARATEINDEXEDAMDPROC ;
typedef  scalar_t__ PFNGLBLENDFUNCINDEXEDAMDPROC ;
typedef  scalar_t__ PFNGLBLENDEQUATIONSEPARATEINDEXEDAMDPROC ;
typedef  scalar_t__ PFNGLBLENDEQUATIONINDEXEDAMDPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBlendEquationIndexedAMD ; 
 scalar_t__ _funcptr_glBlendEquationSeparateIndexedAMD ; 
 scalar_t__ _funcptr_glBlendFuncIndexedAMD ; 
 scalar_t__ _funcptr_glBlendFuncSeparateIndexedAMD ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBlendEquationIndexedAMD = (PFNGLBLENDEQUATIONINDEXEDAMDPROC)FUNC0("glBlendEquationIndexedAMD");
	if(!_funcptr_glBlendEquationIndexedAMD) ++numFailed;
	_funcptr_glBlendEquationSeparateIndexedAMD = (PFNGLBLENDEQUATIONSEPARATEINDEXEDAMDPROC)FUNC0("glBlendEquationSeparateIndexedAMD");
	if(!_funcptr_glBlendEquationSeparateIndexedAMD) ++numFailed;
	_funcptr_glBlendFuncIndexedAMD = (PFNGLBLENDFUNCINDEXEDAMDPROC)FUNC0("glBlendFuncIndexedAMD");
	if(!_funcptr_glBlendFuncIndexedAMD) ++numFailed;
	_funcptr_glBlendFuncSeparateIndexedAMD = (PFNGLBLENDFUNCSEPARATEINDEXEDAMDPROC)FUNC0("glBlendFuncSeparateIndexedAMD");
	if(!_funcptr_glBlendFuncSeparateIndexedAMD) ++numFailed;
	return numFailed;
}