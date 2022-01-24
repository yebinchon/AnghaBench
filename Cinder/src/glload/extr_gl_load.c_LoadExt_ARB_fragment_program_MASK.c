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
typedef  scalar_t__ PFNGLPROGRAMSTRINGARBPROC ;
typedef  scalar_t__ PFNGLPROGRAMLOCALPARAMETER4FVARBPROC ;
typedef  scalar_t__ PFNGLPROGRAMLOCALPARAMETER4FARBPROC ;
typedef  scalar_t__ PFNGLPROGRAMLOCALPARAMETER4DVARBPROC ;
typedef  scalar_t__ PFNGLPROGRAMLOCALPARAMETER4DARBPROC ;
typedef  scalar_t__ PFNGLPROGRAMENVPARAMETER4FVARBPROC ;
typedef  scalar_t__ PFNGLPROGRAMENVPARAMETER4FARBPROC ;
typedef  scalar_t__ PFNGLPROGRAMENVPARAMETER4DVARBPROC ;
typedef  scalar_t__ PFNGLPROGRAMENVPARAMETER4DARBPROC ;
typedef  scalar_t__ PFNGLISPROGRAMARBPROC ;
typedef  scalar_t__ PFNGLGETPROGRAMSTRINGARBPROC ;
typedef  scalar_t__ PFNGLGETPROGRAMLOCALPARAMETERFVARBPROC ;
typedef  scalar_t__ PFNGLGETPROGRAMLOCALPARAMETERDVARBPROC ;
typedef  scalar_t__ PFNGLGETPROGRAMIVARBPROC ;
typedef  scalar_t__ PFNGLGETPROGRAMENVPARAMETERFVARBPROC ;
typedef  scalar_t__ PFNGLGETPROGRAMENVPARAMETERDVARBPROC ;
typedef  scalar_t__ PFNGLGENPROGRAMSARBPROC ;
typedef  scalar_t__ PFNGLDELETEPROGRAMSARBPROC ;
typedef  scalar_t__ PFNGLBINDPROGRAMARBPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBindProgramARB ; 
 scalar_t__ _funcptr_glDeleteProgramsARB ; 
 scalar_t__ _funcptr_glGenProgramsARB ; 
 scalar_t__ _funcptr_glGetProgramEnvParameterdvARB ; 
 scalar_t__ _funcptr_glGetProgramEnvParameterfvARB ; 
 scalar_t__ _funcptr_glGetProgramLocalParameterdvARB ; 
 scalar_t__ _funcptr_glGetProgramLocalParameterfvARB ; 
 scalar_t__ _funcptr_glGetProgramStringARB ; 
 scalar_t__ _funcptr_glGetProgramivARB ; 
 scalar_t__ _funcptr_glIsProgramARB ; 
 scalar_t__ _funcptr_glProgramEnvParameter4dARB ; 
 scalar_t__ _funcptr_glProgramEnvParameter4dvARB ; 
 scalar_t__ _funcptr_glProgramEnvParameter4fARB ; 
 scalar_t__ _funcptr_glProgramEnvParameter4fvARB ; 
 scalar_t__ _funcptr_glProgramLocalParameter4dARB ; 
 scalar_t__ _funcptr_glProgramLocalParameter4dvARB ; 
 scalar_t__ _funcptr_glProgramLocalParameter4fARB ; 
 scalar_t__ _funcptr_glProgramLocalParameter4fvARB ; 
 scalar_t__ _funcptr_glProgramStringARB ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBindProgramARB = (PFNGLBINDPROGRAMARBPROC)FUNC0("glBindProgramARB");
	if(!_funcptr_glBindProgramARB) ++numFailed;
	_funcptr_glDeleteProgramsARB = (PFNGLDELETEPROGRAMSARBPROC)FUNC0("glDeleteProgramsARB");
	if(!_funcptr_glDeleteProgramsARB) ++numFailed;
	_funcptr_glGenProgramsARB = (PFNGLGENPROGRAMSARBPROC)FUNC0("glGenProgramsARB");
	if(!_funcptr_glGenProgramsARB) ++numFailed;
	_funcptr_glGetProgramEnvParameterdvARB = (PFNGLGETPROGRAMENVPARAMETERDVARBPROC)FUNC0("glGetProgramEnvParameterdvARB");
	if(!_funcptr_glGetProgramEnvParameterdvARB) ++numFailed;
	_funcptr_glGetProgramEnvParameterfvARB = (PFNGLGETPROGRAMENVPARAMETERFVARBPROC)FUNC0("glGetProgramEnvParameterfvARB");
	if(!_funcptr_glGetProgramEnvParameterfvARB) ++numFailed;
	_funcptr_glGetProgramLocalParameterdvARB = (PFNGLGETPROGRAMLOCALPARAMETERDVARBPROC)FUNC0("glGetProgramLocalParameterdvARB");
	if(!_funcptr_glGetProgramLocalParameterdvARB) ++numFailed;
	_funcptr_glGetProgramLocalParameterfvARB = (PFNGLGETPROGRAMLOCALPARAMETERFVARBPROC)FUNC0("glGetProgramLocalParameterfvARB");
	if(!_funcptr_glGetProgramLocalParameterfvARB) ++numFailed;
	_funcptr_glGetProgramStringARB = (PFNGLGETPROGRAMSTRINGARBPROC)FUNC0("glGetProgramStringARB");
	if(!_funcptr_glGetProgramStringARB) ++numFailed;
	_funcptr_glGetProgramivARB = (PFNGLGETPROGRAMIVARBPROC)FUNC0("glGetProgramivARB");
	if(!_funcptr_glGetProgramivARB) ++numFailed;
	_funcptr_glIsProgramARB = (PFNGLISPROGRAMARBPROC)FUNC0("glIsProgramARB");
	if(!_funcptr_glIsProgramARB) ++numFailed;
	_funcptr_glProgramEnvParameter4dARB = (PFNGLPROGRAMENVPARAMETER4DARBPROC)FUNC0("glProgramEnvParameter4dARB");
	if(!_funcptr_glProgramEnvParameter4dARB) ++numFailed;
	_funcptr_glProgramEnvParameter4dvARB = (PFNGLPROGRAMENVPARAMETER4DVARBPROC)FUNC0("glProgramEnvParameter4dvARB");
	if(!_funcptr_glProgramEnvParameter4dvARB) ++numFailed;
	_funcptr_glProgramEnvParameter4fARB = (PFNGLPROGRAMENVPARAMETER4FARBPROC)FUNC0("glProgramEnvParameter4fARB");
	if(!_funcptr_glProgramEnvParameter4fARB) ++numFailed;
	_funcptr_glProgramEnvParameter4fvARB = (PFNGLPROGRAMENVPARAMETER4FVARBPROC)FUNC0("glProgramEnvParameter4fvARB");
	if(!_funcptr_glProgramEnvParameter4fvARB) ++numFailed;
	_funcptr_glProgramLocalParameter4dARB = (PFNGLPROGRAMLOCALPARAMETER4DARBPROC)FUNC0("glProgramLocalParameter4dARB");
	if(!_funcptr_glProgramLocalParameter4dARB) ++numFailed;
	_funcptr_glProgramLocalParameter4dvARB = (PFNGLPROGRAMLOCALPARAMETER4DVARBPROC)FUNC0("glProgramLocalParameter4dvARB");
	if(!_funcptr_glProgramLocalParameter4dvARB) ++numFailed;
	_funcptr_glProgramLocalParameter4fARB = (PFNGLPROGRAMLOCALPARAMETER4FARBPROC)FUNC0("glProgramLocalParameter4fARB");
	if(!_funcptr_glProgramLocalParameter4fARB) ++numFailed;
	_funcptr_glProgramLocalParameter4fvARB = (PFNGLPROGRAMLOCALPARAMETER4FVARBPROC)FUNC0("glProgramLocalParameter4fvARB");
	if(!_funcptr_glProgramLocalParameter4fvARB) ++numFailed;
	_funcptr_glProgramStringARB = (PFNGLPROGRAMSTRINGARBPROC)FUNC0("glProgramStringARB");
	if(!_funcptr_glProgramStringARB) ++numFailed;
	return numFailed;
}