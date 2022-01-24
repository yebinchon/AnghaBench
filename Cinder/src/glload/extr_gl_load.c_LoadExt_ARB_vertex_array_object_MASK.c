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
typedef  scalar_t__ PFNGLISVERTEXARRAYPROC ;
typedef  scalar_t__ PFNGLGENVERTEXARRAYSPROC ;
typedef  scalar_t__ PFNGLDELETEVERTEXARRAYSPROC ;
typedef  scalar_t__ PFNGLBINDVERTEXARRAYPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBindVertexArray ; 
 scalar_t__ _funcptr_glDeleteVertexArrays ; 
 scalar_t__ _funcptr_glGenVertexArrays ; 
 scalar_t__ _funcptr_glIsVertexArray ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBindVertexArray = (PFNGLBINDVERTEXARRAYPROC)FUNC0("glBindVertexArray");
	if(!_funcptr_glBindVertexArray) ++numFailed;
	_funcptr_glDeleteVertexArrays = (PFNGLDELETEVERTEXARRAYSPROC)FUNC0("glDeleteVertexArrays");
	if(!_funcptr_glDeleteVertexArrays) ++numFailed;
	_funcptr_glGenVertexArrays = (PFNGLGENVERTEXARRAYSPROC)FUNC0("glGenVertexArrays");
	if(!_funcptr_glGenVertexArrays) ++numFailed;
	_funcptr_glIsVertexArray = (PFNGLISVERTEXARRAYPROC)FUNC0("glIsVertexArray");
	if(!_funcptr_glIsVertexArray) ++numFailed;
	return numFailed;
}