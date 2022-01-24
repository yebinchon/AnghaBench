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
typedef  scalar_t__ PFNGLTESTFENCENVPROC ;
typedef  scalar_t__ PFNGLSETFENCENVPROC ;
typedef  scalar_t__ PFNGLISFENCENVPROC ;
typedef  scalar_t__ PFNGLGETFENCEIVNVPROC ;
typedef  scalar_t__ PFNGLGENFENCESNVPROC ;
typedef  scalar_t__ PFNGLFINISHFENCENVPROC ;
typedef  scalar_t__ PFNGLDELETEFENCESNVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glDeleteFencesNV ; 
 scalar_t__ _funcptr_glFinishFenceNV ; 
 scalar_t__ _funcptr_glGenFencesNV ; 
 scalar_t__ _funcptr_glGetFenceivNV ; 
 scalar_t__ _funcptr_glIsFenceNV ; 
 scalar_t__ _funcptr_glSetFenceNV ; 
 scalar_t__ _funcptr_glTestFenceNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glDeleteFencesNV = (PFNGLDELETEFENCESNVPROC)FUNC0("glDeleteFencesNV");
	if(!_funcptr_glDeleteFencesNV) ++numFailed;
	_funcptr_glFinishFenceNV = (PFNGLFINISHFENCENVPROC)FUNC0("glFinishFenceNV");
	if(!_funcptr_glFinishFenceNV) ++numFailed;
	_funcptr_glGenFencesNV = (PFNGLGENFENCESNVPROC)FUNC0("glGenFencesNV");
	if(!_funcptr_glGenFencesNV) ++numFailed;
	_funcptr_glGetFenceivNV = (PFNGLGETFENCEIVNVPROC)FUNC0("glGetFenceivNV");
	if(!_funcptr_glGetFenceivNV) ++numFailed;
	_funcptr_glIsFenceNV = (PFNGLISFENCENVPROC)FUNC0("glIsFenceNV");
	if(!_funcptr_glIsFenceNV) ++numFailed;
	_funcptr_glSetFenceNV = (PFNGLSETFENCENVPROC)FUNC0("glSetFenceNV");
	if(!_funcptr_glSetFenceNV) ++numFailed;
	_funcptr_glTestFenceNV = (PFNGLTESTFENCENVPROC)FUNC0("glTestFenceNV");
	if(!_funcptr_glTestFenceNV) ++numFailed;
	return numFailed;
}