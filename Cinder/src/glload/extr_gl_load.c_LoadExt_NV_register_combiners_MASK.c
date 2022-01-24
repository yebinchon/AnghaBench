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
typedef  scalar_t__ PFNGLGETFINALCOMBINERINPUTPARAMETERIVNVPROC ;
typedef  scalar_t__ PFNGLGETFINALCOMBINERINPUTPARAMETERFVNVPROC ;
typedef  scalar_t__ PFNGLGETCOMBINEROUTPUTPARAMETERIVNVPROC ;
typedef  scalar_t__ PFNGLGETCOMBINEROUTPUTPARAMETERFVNVPROC ;
typedef  scalar_t__ PFNGLGETCOMBINERINPUTPARAMETERIVNVPROC ;
typedef  scalar_t__ PFNGLGETCOMBINERINPUTPARAMETERFVNVPROC ;
typedef  scalar_t__ PFNGLFINALCOMBINERINPUTNVPROC ;
typedef  scalar_t__ PFNGLCOMBINERPARAMETERIVNVPROC ;
typedef  scalar_t__ PFNGLCOMBINERPARAMETERINVPROC ;
typedef  scalar_t__ PFNGLCOMBINERPARAMETERFVNVPROC ;
typedef  scalar_t__ PFNGLCOMBINERPARAMETERFNVPROC ;
typedef  scalar_t__ PFNGLCOMBINEROUTPUTNVPROC ;
typedef  scalar_t__ PFNGLCOMBINERINPUTNVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glCombinerInputNV ; 
 scalar_t__ _funcptr_glCombinerOutputNV ; 
 scalar_t__ _funcptr_glCombinerParameterfNV ; 
 scalar_t__ _funcptr_glCombinerParameterfvNV ; 
 scalar_t__ _funcptr_glCombinerParameteriNV ; 
 scalar_t__ _funcptr_glCombinerParameterivNV ; 
 scalar_t__ _funcptr_glFinalCombinerInputNV ; 
 scalar_t__ _funcptr_glGetCombinerInputParameterfvNV ; 
 scalar_t__ _funcptr_glGetCombinerInputParameterivNV ; 
 scalar_t__ _funcptr_glGetCombinerOutputParameterfvNV ; 
 scalar_t__ _funcptr_glGetCombinerOutputParameterivNV ; 
 scalar_t__ _funcptr_glGetFinalCombinerInputParameterfvNV ; 
 scalar_t__ _funcptr_glGetFinalCombinerInputParameterivNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glCombinerInputNV = (PFNGLCOMBINERINPUTNVPROC)FUNC0("glCombinerInputNV");
	if(!_funcptr_glCombinerInputNV) ++numFailed;
	_funcptr_glCombinerOutputNV = (PFNGLCOMBINEROUTPUTNVPROC)FUNC0("glCombinerOutputNV");
	if(!_funcptr_glCombinerOutputNV) ++numFailed;
	_funcptr_glCombinerParameterfNV = (PFNGLCOMBINERPARAMETERFNVPROC)FUNC0("glCombinerParameterfNV");
	if(!_funcptr_glCombinerParameterfNV) ++numFailed;
	_funcptr_glCombinerParameterfvNV = (PFNGLCOMBINERPARAMETERFVNVPROC)FUNC0("glCombinerParameterfvNV");
	if(!_funcptr_glCombinerParameterfvNV) ++numFailed;
	_funcptr_glCombinerParameteriNV = (PFNGLCOMBINERPARAMETERINVPROC)FUNC0("glCombinerParameteriNV");
	if(!_funcptr_glCombinerParameteriNV) ++numFailed;
	_funcptr_glCombinerParameterivNV = (PFNGLCOMBINERPARAMETERIVNVPROC)FUNC0("glCombinerParameterivNV");
	if(!_funcptr_glCombinerParameterivNV) ++numFailed;
	_funcptr_glFinalCombinerInputNV = (PFNGLFINALCOMBINERINPUTNVPROC)FUNC0("glFinalCombinerInputNV");
	if(!_funcptr_glFinalCombinerInputNV) ++numFailed;
	_funcptr_glGetCombinerInputParameterfvNV = (PFNGLGETCOMBINERINPUTPARAMETERFVNVPROC)FUNC0("glGetCombinerInputParameterfvNV");
	if(!_funcptr_glGetCombinerInputParameterfvNV) ++numFailed;
	_funcptr_glGetCombinerInputParameterivNV = (PFNGLGETCOMBINERINPUTPARAMETERIVNVPROC)FUNC0("glGetCombinerInputParameterivNV");
	if(!_funcptr_glGetCombinerInputParameterivNV) ++numFailed;
	_funcptr_glGetCombinerOutputParameterfvNV = (PFNGLGETCOMBINEROUTPUTPARAMETERFVNVPROC)FUNC0("glGetCombinerOutputParameterfvNV");
	if(!_funcptr_glGetCombinerOutputParameterfvNV) ++numFailed;
	_funcptr_glGetCombinerOutputParameterivNV = (PFNGLGETCOMBINEROUTPUTPARAMETERIVNVPROC)FUNC0("glGetCombinerOutputParameterivNV");
	if(!_funcptr_glGetCombinerOutputParameterivNV) ++numFailed;
	_funcptr_glGetFinalCombinerInputParameterfvNV = (PFNGLGETFINALCOMBINERINPUTPARAMETERFVNVPROC)FUNC0("glGetFinalCombinerInputParameterfvNV");
	if(!_funcptr_glGetFinalCombinerInputParameterfvNV) ++numFailed;
	_funcptr_glGetFinalCombinerInputParameterivNV = (PFNGLGETFINALCOMBINERINPUTPARAMETERIVNVPROC)FUNC0("glGetFinalCombinerInputParameterivNV");
	if(!_funcptr_glGetFinalCombinerInputParameterivNV) ++numFailed;
	return numFailed;
}