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
typedef  scalar_t__ PFNGLGETFRAMEBUFFERPARAMETERIVPROC ;
typedef  scalar_t__ PFNGLFRAMEBUFFERPARAMETERIPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glFramebufferParameteri ; 
 scalar_t__ _funcptr_glGetFramebufferParameteriv ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glFramebufferParameteri = (PFNGLFRAMEBUFFERPARAMETERIPROC)FUNC0("glFramebufferParameteri");
	if(!_funcptr_glFramebufferParameteri) ++numFailed;
	_funcptr_glGetFramebufferParameteriv = (PFNGLGETFRAMEBUFFERPARAMETERIVPROC)FUNC0("glGetFramebufferParameteriv");
	if(!_funcptr_glGetFramebufferParameteriv) ++numFailed;
	return numFailed;
}