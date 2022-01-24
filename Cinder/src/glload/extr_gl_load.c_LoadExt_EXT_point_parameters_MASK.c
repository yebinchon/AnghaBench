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
typedef  scalar_t__ PFNGLPOINTPARAMETERFVEXTPROC ;
typedef  scalar_t__ PFNGLPOINTPARAMETERFEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glPointParameterfEXT ; 
 scalar_t__ _funcptr_glPointParameterfvEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glPointParameterfEXT = (PFNGLPOINTPARAMETERFEXTPROC)FUNC0("glPointParameterfEXT");
	if(!_funcptr_glPointParameterfEXT) ++numFailed;
	_funcptr_glPointParameterfvEXT = (PFNGLPOINTPARAMETERFVEXTPROC)FUNC0("glPointParameterfvEXT");
	if(!_funcptr_glPointParameterfvEXT) ++numFailed;
	return numFailed;
}