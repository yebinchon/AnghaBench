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
typedef  scalar_t__ PFNGLGETATTRIBLOCATIONARBPROC ;
typedef  scalar_t__ PFNGLGETACTIVEATTRIBARBPROC ;
typedef  scalar_t__ PFNGLBINDATTRIBLOCATIONARBPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBindAttribLocationARB ; 
 scalar_t__ _funcptr_glGetActiveAttribARB ; 
 scalar_t__ _funcptr_glGetAttribLocationARB ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBindAttribLocationARB = (PFNGLBINDATTRIBLOCATIONARBPROC)FUNC0("glBindAttribLocationARB");
	if(!_funcptr_glBindAttribLocationARB) ++numFailed;
	_funcptr_glGetActiveAttribARB = (PFNGLGETACTIVEATTRIBARBPROC)FUNC0("glGetActiveAttribARB");
	if(!_funcptr_glGetActiveAttribARB) ++numFailed;
	_funcptr_glGetAttribLocationARB = (PFNGLGETATTRIBLOCATIONARBPROC)FUNC0("glGetAttribLocationARB");
	if(!_funcptr_glGetAttribLocationARB) ++numFailed;
	return numFailed;
}