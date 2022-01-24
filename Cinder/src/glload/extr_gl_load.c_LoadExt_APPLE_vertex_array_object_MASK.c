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
typedef  scalar_t__ PFNGLISVERTEXARRAYAPPLEPROC ;
typedef  scalar_t__ PFNGLGENVERTEXARRAYSAPPLEPROC ;
typedef  scalar_t__ PFNGLDELETEVERTEXARRAYSAPPLEPROC ;
typedef  scalar_t__ PFNGLBINDVERTEXARRAYAPPLEPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBindVertexArrayAPPLE ; 
 scalar_t__ _funcptr_glDeleteVertexArraysAPPLE ; 
 scalar_t__ _funcptr_glGenVertexArraysAPPLE ; 
 scalar_t__ _funcptr_glIsVertexArrayAPPLE ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBindVertexArrayAPPLE = (PFNGLBINDVERTEXARRAYAPPLEPROC)FUNC0("glBindVertexArrayAPPLE");
	if(!_funcptr_glBindVertexArrayAPPLE) ++numFailed;
	_funcptr_glDeleteVertexArraysAPPLE = (PFNGLDELETEVERTEXARRAYSAPPLEPROC)FUNC0("glDeleteVertexArraysAPPLE");
	if(!_funcptr_glDeleteVertexArraysAPPLE) ++numFailed;
	_funcptr_glGenVertexArraysAPPLE = (PFNGLGENVERTEXARRAYSAPPLEPROC)FUNC0("glGenVertexArraysAPPLE");
	if(!_funcptr_glGenVertexArraysAPPLE) ++numFailed;
	_funcptr_glIsVertexArrayAPPLE = (PFNGLISVERTEXARRAYAPPLEPROC)FUNC0("glIsVertexArrayAPPLE");
	if(!_funcptr_glIsVertexArrayAPPLE) ++numFailed;
	return numFailed;
}