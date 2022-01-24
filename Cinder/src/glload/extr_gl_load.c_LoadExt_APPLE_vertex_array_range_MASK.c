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
typedef  scalar_t__ PFNGLVERTEXARRAYRANGEAPPLEPROC ;
typedef  scalar_t__ PFNGLVERTEXARRAYPARAMETERIAPPLEPROC ;
typedef  scalar_t__ PFNGLFLUSHVERTEXARRAYRANGEAPPLEPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glFlushVertexArrayRangeAPPLE ; 
 scalar_t__ _funcptr_glVertexArrayParameteriAPPLE ; 
 scalar_t__ _funcptr_glVertexArrayRangeAPPLE ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glFlushVertexArrayRangeAPPLE = (PFNGLFLUSHVERTEXARRAYRANGEAPPLEPROC)FUNC0("glFlushVertexArrayRangeAPPLE");
	if(!_funcptr_glFlushVertexArrayRangeAPPLE) ++numFailed;
	_funcptr_glVertexArrayParameteriAPPLE = (PFNGLVERTEXARRAYPARAMETERIAPPLEPROC)FUNC0("glVertexArrayParameteriAPPLE");
	if(!_funcptr_glVertexArrayParameteriAPPLE) ++numFailed;
	_funcptr_glVertexArrayRangeAPPLE = (PFNGLVERTEXARRAYRANGEAPPLEPROC)FUNC0("glVertexArrayRangeAPPLE");
	if(!_funcptr_glVertexArrayRangeAPPLE) ++numFailed;
	return numFailed;
}