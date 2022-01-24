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
typedef  scalar_t__ PFNGLTEXSUBIMAGE3DPROC ;
typedef  scalar_t__ PFNGLTEXIMAGE3DPROC ;
typedef  scalar_t__ PFNGLDRAWRANGEELEMENTSPROC ;
typedef  scalar_t__ PFNGLCOPYTEXSUBIMAGE3DPROC ;
typedef  scalar_t__ PFNGLBLENDEQUATIONPROC ;
typedef  scalar_t__ PFNGLBLENDCOLORPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBlendColor ; 
 scalar_t__ _funcptr_glBlendEquation ; 
 scalar_t__ _funcptr_glCopyTexSubImage3D ; 
 scalar_t__ _funcptr_glDrawRangeElements ; 
 scalar_t__ _funcptr_glTexImage3D ; 
 scalar_t__ _funcptr_glTexSubImage3D ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBlendColor = (PFNGLBLENDCOLORPROC)FUNC0("glBlendColor");
	if(!_funcptr_glBlendColor) ++numFailed;
	_funcptr_glBlendEquation = (PFNGLBLENDEQUATIONPROC)FUNC0("glBlendEquation");
	if(!_funcptr_glBlendEquation) ++numFailed;
	_funcptr_glCopyTexSubImage3D = (PFNGLCOPYTEXSUBIMAGE3DPROC)FUNC0("glCopyTexSubImage3D");
	if(!_funcptr_glCopyTexSubImage3D) ++numFailed;
	_funcptr_glDrawRangeElements = (PFNGLDRAWRANGEELEMENTSPROC)FUNC0("glDrawRangeElements");
	if(!_funcptr_glDrawRangeElements) ++numFailed;
	_funcptr_glTexImage3D = (PFNGLTEXIMAGE3DPROC)FUNC0("glTexImage3D");
	if(!_funcptr_glTexImage3D) ++numFailed;
	_funcptr_glTexSubImage3D = (PFNGLTEXSUBIMAGE3DPROC)FUNC0("glTexSubImage3D");
	if(!_funcptr_glTexSubImage3D) ++numFailed;
	return numFailed;
}