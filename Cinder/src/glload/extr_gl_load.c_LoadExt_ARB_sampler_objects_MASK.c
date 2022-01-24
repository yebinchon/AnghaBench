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
typedef  scalar_t__ PFNGLSAMPLERPARAMETERIVPROC ;
typedef  scalar_t__ PFNGLSAMPLERPARAMETERIUIVPROC ;
typedef  scalar_t__ PFNGLSAMPLERPARAMETERIPROC ;
typedef  scalar_t__ PFNGLSAMPLERPARAMETERIIVPROC ;
typedef  scalar_t__ PFNGLSAMPLERPARAMETERFVPROC ;
typedef  scalar_t__ PFNGLSAMPLERPARAMETERFPROC ;
typedef  scalar_t__ PFNGLISSAMPLERPROC ;
typedef  scalar_t__ PFNGLGETSAMPLERPARAMETERIVPROC ;
typedef  scalar_t__ PFNGLGETSAMPLERPARAMETERIUIVPROC ;
typedef  scalar_t__ PFNGLGETSAMPLERPARAMETERIIVPROC ;
typedef  scalar_t__ PFNGLGETSAMPLERPARAMETERFVPROC ;
typedef  scalar_t__ PFNGLGENSAMPLERSPROC ;
typedef  scalar_t__ PFNGLDELETESAMPLERSPROC ;
typedef  scalar_t__ PFNGLBINDSAMPLERPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBindSampler ; 
 scalar_t__ _funcptr_glDeleteSamplers ; 
 scalar_t__ _funcptr_glGenSamplers ; 
 scalar_t__ _funcptr_glGetSamplerParameterIiv ; 
 scalar_t__ _funcptr_glGetSamplerParameterIuiv ; 
 scalar_t__ _funcptr_glGetSamplerParameterfv ; 
 scalar_t__ _funcptr_glGetSamplerParameteriv ; 
 scalar_t__ _funcptr_glIsSampler ; 
 scalar_t__ _funcptr_glSamplerParameterIiv ; 
 scalar_t__ _funcptr_glSamplerParameterIuiv ; 
 scalar_t__ _funcptr_glSamplerParameterf ; 
 scalar_t__ _funcptr_glSamplerParameterfv ; 
 scalar_t__ _funcptr_glSamplerParameteri ; 
 scalar_t__ _funcptr_glSamplerParameteriv ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBindSampler = (PFNGLBINDSAMPLERPROC)FUNC0("glBindSampler");
	if(!_funcptr_glBindSampler) ++numFailed;
	_funcptr_glDeleteSamplers = (PFNGLDELETESAMPLERSPROC)FUNC0("glDeleteSamplers");
	if(!_funcptr_glDeleteSamplers) ++numFailed;
	_funcptr_glGenSamplers = (PFNGLGENSAMPLERSPROC)FUNC0("glGenSamplers");
	if(!_funcptr_glGenSamplers) ++numFailed;
	_funcptr_glGetSamplerParameterIiv = (PFNGLGETSAMPLERPARAMETERIIVPROC)FUNC0("glGetSamplerParameterIiv");
	if(!_funcptr_glGetSamplerParameterIiv) ++numFailed;
	_funcptr_glGetSamplerParameterIuiv = (PFNGLGETSAMPLERPARAMETERIUIVPROC)FUNC0("glGetSamplerParameterIuiv");
	if(!_funcptr_glGetSamplerParameterIuiv) ++numFailed;
	_funcptr_glGetSamplerParameterfv = (PFNGLGETSAMPLERPARAMETERFVPROC)FUNC0("glGetSamplerParameterfv");
	if(!_funcptr_glGetSamplerParameterfv) ++numFailed;
	_funcptr_glGetSamplerParameteriv = (PFNGLGETSAMPLERPARAMETERIVPROC)FUNC0("glGetSamplerParameteriv");
	if(!_funcptr_glGetSamplerParameteriv) ++numFailed;
	_funcptr_glIsSampler = (PFNGLISSAMPLERPROC)FUNC0("glIsSampler");
	if(!_funcptr_glIsSampler) ++numFailed;
	_funcptr_glSamplerParameterIiv = (PFNGLSAMPLERPARAMETERIIVPROC)FUNC0("glSamplerParameterIiv");
	if(!_funcptr_glSamplerParameterIiv) ++numFailed;
	_funcptr_glSamplerParameterIuiv = (PFNGLSAMPLERPARAMETERIUIVPROC)FUNC0("glSamplerParameterIuiv");
	if(!_funcptr_glSamplerParameterIuiv) ++numFailed;
	_funcptr_glSamplerParameterf = (PFNGLSAMPLERPARAMETERFPROC)FUNC0("glSamplerParameterf");
	if(!_funcptr_glSamplerParameterf) ++numFailed;
	_funcptr_glSamplerParameterfv = (PFNGLSAMPLERPARAMETERFVPROC)FUNC0("glSamplerParameterfv");
	if(!_funcptr_glSamplerParameterfv) ++numFailed;
	_funcptr_glSamplerParameteri = (PFNGLSAMPLERPARAMETERIPROC)FUNC0("glSamplerParameteri");
	if(!_funcptr_glSamplerParameteri) ++numFailed;
	_funcptr_glSamplerParameteriv = (PFNGLSAMPLERPARAMETERIVPROC)FUNC0("glSamplerParameteriv");
	if(!_funcptr_glSamplerParameteriv) ++numFailed;
	return numFailed;
}