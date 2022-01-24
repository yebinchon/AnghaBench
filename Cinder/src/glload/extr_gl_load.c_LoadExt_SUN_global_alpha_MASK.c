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
typedef  scalar_t__ PFNGLGLOBALALPHAFACTORUSSUNPROC ;
typedef  scalar_t__ PFNGLGLOBALALPHAFACTORUISUNPROC ;
typedef  scalar_t__ PFNGLGLOBALALPHAFACTORUBSUNPROC ;
typedef  scalar_t__ PFNGLGLOBALALPHAFACTORSSUNPROC ;
typedef  scalar_t__ PFNGLGLOBALALPHAFACTORISUNPROC ;
typedef  scalar_t__ PFNGLGLOBALALPHAFACTORFSUNPROC ;
typedef  scalar_t__ PFNGLGLOBALALPHAFACTORDSUNPROC ;
typedef  scalar_t__ PFNGLGLOBALALPHAFACTORBSUNPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGlobalAlphaFactorbSUN ; 
 scalar_t__ _funcptr_glGlobalAlphaFactordSUN ; 
 scalar_t__ _funcptr_glGlobalAlphaFactorfSUN ; 
 scalar_t__ _funcptr_glGlobalAlphaFactoriSUN ; 
 scalar_t__ _funcptr_glGlobalAlphaFactorsSUN ; 
 scalar_t__ _funcptr_glGlobalAlphaFactorubSUN ; 
 scalar_t__ _funcptr_glGlobalAlphaFactoruiSUN ; 
 scalar_t__ _funcptr_glGlobalAlphaFactorusSUN ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGlobalAlphaFactorbSUN = (PFNGLGLOBALALPHAFACTORBSUNPROC)FUNC0("glGlobalAlphaFactorbSUN");
	if(!_funcptr_glGlobalAlphaFactorbSUN) ++numFailed;
	_funcptr_glGlobalAlphaFactordSUN = (PFNGLGLOBALALPHAFACTORDSUNPROC)FUNC0("glGlobalAlphaFactordSUN");
	if(!_funcptr_glGlobalAlphaFactordSUN) ++numFailed;
	_funcptr_glGlobalAlphaFactorfSUN = (PFNGLGLOBALALPHAFACTORFSUNPROC)FUNC0("glGlobalAlphaFactorfSUN");
	if(!_funcptr_glGlobalAlphaFactorfSUN) ++numFailed;
	_funcptr_glGlobalAlphaFactoriSUN = (PFNGLGLOBALALPHAFACTORISUNPROC)FUNC0("glGlobalAlphaFactoriSUN");
	if(!_funcptr_glGlobalAlphaFactoriSUN) ++numFailed;
	_funcptr_glGlobalAlphaFactorsSUN = (PFNGLGLOBALALPHAFACTORSSUNPROC)FUNC0("glGlobalAlphaFactorsSUN");
	if(!_funcptr_glGlobalAlphaFactorsSUN) ++numFailed;
	_funcptr_glGlobalAlphaFactorubSUN = (PFNGLGLOBALALPHAFACTORUBSUNPROC)FUNC0("glGlobalAlphaFactorubSUN");
	if(!_funcptr_glGlobalAlphaFactorubSUN) ++numFailed;
	_funcptr_glGlobalAlphaFactoruiSUN = (PFNGLGLOBALALPHAFACTORUISUNPROC)FUNC0("glGlobalAlphaFactoruiSUN");
	if(!_funcptr_glGlobalAlphaFactoruiSUN) ++numFailed;
	_funcptr_glGlobalAlphaFactorusSUN = (PFNGLGLOBALALPHAFACTORUSSUNPROC)FUNC0("glGlobalAlphaFactorusSUN");
	if(!_funcptr_glGlobalAlphaFactorusSUN) ++numFailed;
	return numFailed;
}