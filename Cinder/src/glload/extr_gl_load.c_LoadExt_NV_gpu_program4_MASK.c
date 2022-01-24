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
typedef  scalar_t__ PFNGLPROGRAMLOCALPARAMETERSI4UIVNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMLOCALPARAMETERSI4IVNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMLOCALPARAMETERI4UIVNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMLOCALPARAMETERI4UINVPROC ;
typedef  scalar_t__ PFNGLPROGRAMLOCALPARAMETERI4IVNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMLOCALPARAMETERI4INVPROC ;
typedef  scalar_t__ PFNGLPROGRAMENVPARAMETERSI4UIVNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMENVPARAMETERSI4IVNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMENVPARAMETERI4UIVNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMENVPARAMETERI4UINVPROC ;
typedef  scalar_t__ PFNGLPROGRAMENVPARAMETERI4IVNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMENVPARAMETERI4INVPROC ;
typedef  scalar_t__ PFNGLGETPROGRAMLOCALPARAMETERIUIVNVPROC ;
typedef  scalar_t__ PFNGLGETPROGRAMLOCALPARAMETERIIVNVPROC ;
typedef  scalar_t__ PFNGLGETPROGRAMENVPARAMETERIUIVNVPROC ;
typedef  scalar_t__ PFNGLGETPROGRAMENVPARAMETERIIVNVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetProgramEnvParameterIivNV ; 
 scalar_t__ _funcptr_glGetProgramEnvParameterIuivNV ; 
 scalar_t__ _funcptr_glGetProgramLocalParameterIivNV ; 
 scalar_t__ _funcptr_glGetProgramLocalParameterIuivNV ; 
 scalar_t__ _funcptr_glProgramEnvParameterI4iNV ; 
 scalar_t__ _funcptr_glProgramEnvParameterI4ivNV ; 
 scalar_t__ _funcptr_glProgramEnvParameterI4uiNV ; 
 scalar_t__ _funcptr_glProgramEnvParameterI4uivNV ; 
 scalar_t__ _funcptr_glProgramEnvParametersI4ivNV ; 
 scalar_t__ _funcptr_glProgramEnvParametersI4uivNV ; 
 scalar_t__ _funcptr_glProgramLocalParameterI4iNV ; 
 scalar_t__ _funcptr_glProgramLocalParameterI4ivNV ; 
 scalar_t__ _funcptr_glProgramLocalParameterI4uiNV ; 
 scalar_t__ _funcptr_glProgramLocalParameterI4uivNV ; 
 scalar_t__ _funcptr_glProgramLocalParametersI4ivNV ; 
 scalar_t__ _funcptr_glProgramLocalParametersI4uivNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetProgramEnvParameterIivNV = (PFNGLGETPROGRAMENVPARAMETERIIVNVPROC)FUNC0("glGetProgramEnvParameterIivNV");
	if(!_funcptr_glGetProgramEnvParameterIivNV) ++numFailed;
	_funcptr_glGetProgramEnvParameterIuivNV = (PFNGLGETPROGRAMENVPARAMETERIUIVNVPROC)FUNC0("glGetProgramEnvParameterIuivNV");
	if(!_funcptr_glGetProgramEnvParameterIuivNV) ++numFailed;
	_funcptr_glGetProgramLocalParameterIivNV = (PFNGLGETPROGRAMLOCALPARAMETERIIVNVPROC)FUNC0("glGetProgramLocalParameterIivNV");
	if(!_funcptr_glGetProgramLocalParameterIivNV) ++numFailed;
	_funcptr_glGetProgramLocalParameterIuivNV = (PFNGLGETPROGRAMLOCALPARAMETERIUIVNVPROC)FUNC0("glGetProgramLocalParameterIuivNV");
	if(!_funcptr_glGetProgramLocalParameterIuivNV) ++numFailed;
	_funcptr_glProgramEnvParameterI4iNV = (PFNGLPROGRAMENVPARAMETERI4INVPROC)FUNC0("glProgramEnvParameterI4iNV");
	if(!_funcptr_glProgramEnvParameterI4iNV) ++numFailed;
	_funcptr_glProgramEnvParameterI4ivNV = (PFNGLPROGRAMENVPARAMETERI4IVNVPROC)FUNC0("glProgramEnvParameterI4ivNV");
	if(!_funcptr_glProgramEnvParameterI4ivNV) ++numFailed;
	_funcptr_glProgramEnvParameterI4uiNV = (PFNGLPROGRAMENVPARAMETERI4UINVPROC)FUNC0("glProgramEnvParameterI4uiNV");
	if(!_funcptr_glProgramEnvParameterI4uiNV) ++numFailed;
	_funcptr_glProgramEnvParameterI4uivNV = (PFNGLPROGRAMENVPARAMETERI4UIVNVPROC)FUNC0("glProgramEnvParameterI4uivNV");
	if(!_funcptr_glProgramEnvParameterI4uivNV) ++numFailed;
	_funcptr_glProgramEnvParametersI4ivNV = (PFNGLPROGRAMENVPARAMETERSI4IVNVPROC)FUNC0("glProgramEnvParametersI4ivNV");
	if(!_funcptr_glProgramEnvParametersI4ivNV) ++numFailed;
	_funcptr_glProgramEnvParametersI4uivNV = (PFNGLPROGRAMENVPARAMETERSI4UIVNVPROC)FUNC0("glProgramEnvParametersI4uivNV");
	if(!_funcptr_glProgramEnvParametersI4uivNV) ++numFailed;
	_funcptr_glProgramLocalParameterI4iNV = (PFNGLPROGRAMLOCALPARAMETERI4INVPROC)FUNC0("glProgramLocalParameterI4iNV");
	if(!_funcptr_glProgramLocalParameterI4iNV) ++numFailed;
	_funcptr_glProgramLocalParameterI4ivNV = (PFNGLPROGRAMLOCALPARAMETERI4IVNVPROC)FUNC0("glProgramLocalParameterI4ivNV");
	if(!_funcptr_glProgramLocalParameterI4ivNV) ++numFailed;
	_funcptr_glProgramLocalParameterI4uiNV = (PFNGLPROGRAMLOCALPARAMETERI4UINVPROC)FUNC0("glProgramLocalParameterI4uiNV");
	if(!_funcptr_glProgramLocalParameterI4uiNV) ++numFailed;
	_funcptr_glProgramLocalParameterI4uivNV = (PFNGLPROGRAMLOCALPARAMETERI4UIVNVPROC)FUNC0("glProgramLocalParameterI4uivNV");
	if(!_funcptr_glProgramLocalParameterI4uivNV) ++numFailed;
	_funcptr_glProgramLocalParametersI4ivNV = (PFNGLPROGRAMLOCALPARAMETERSI4IVNVPROC)FUNC0("glProgramLocalParametersI4ivNV");
	if(!_funcptr_glProgramLocalParametersI4ivNV) ++numFailed;
	_funcptr_glProgramLocalParametersI4uivNV = (PFNGLPROGRAMLOCALPARAMETERSI4UIVNVPROC)FUNC0("glProgramLocalParametersI4uivNV");
	if(!_funcptr_glProgramLocalParametersI4uivNV) ++numFailed;
	return numFailed;
}