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
typedef  scalar_t__ PFNGLGETFOGFUNCSGISPROC ;
typedef  scalar_t__ PFNGLFOGFUNCSGISPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glFogFuncSGIS ; 
 scalar_t__ _funcptr_glGetFogFuncSGIS ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glFogFuncSGIS = (PFNGLFOGFUNCSGISPROC)FUNC0("glFogFuncSGIS");
	if(!_funcptr_glFogFuncSGIS) ++numFailed;
	_funcptr_glGetFogFuncSGIS = (PFNGLGETFOGFUNCSGISPROC)FUNC0("glGetFogFuncSGIS");
	if(!_funcptr_glGetFogFuncSGIS) ++numFailed;
	return numFailed;
}