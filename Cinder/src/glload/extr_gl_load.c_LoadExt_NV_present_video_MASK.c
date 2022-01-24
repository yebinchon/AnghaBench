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
typedef  scalar_t__ PFNGLPRESENTFRAMEKEYEDNVPROC ;
typedef  scalar_t__ PFNGLPRESENTFRAMEDUALFILLNVPROC ;
typedef  scalar_t__ PFNGLGETVIDEOUIVNVPROC ;
typedef  scalar_t__ PFNGLGETVIDEOUI64VNVPROC ;
typedef  scalar_t__ PFNGLGETVIDEOIVNVPROC ;
typedef  scalar_t__ PFNGLGETVIDEOI64VNVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetVideoi64vNV ; 
 scalar_t__ _funcptr_glGetVideoivNV ; 
 scalar_t__ _funcptr_glGetVideoui64vNV ; 
 scalar_t__ _funcptr_glGetVideouivNV ; 
 scalar_t__ _funcptr_glPresentFrameDualFillNV ; 
 scalar_t__ _funcptr_glPresentFrameKeyedNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetVideoi64vNV = (PFNGLGETVIDEOI64VNVPROC)FUNC0("glGetVideoi64vNV");
	if(!_funcptr_glGetVideoi64vNV) ++numFailed;
	_funcptr_glGetVideoivNV = (PFNGLGETVIDEOIVNVPROC)FUNC0("glGetVideoivNV");
	if(!_funcptr_glGetVideoivNV) ++numFailed;
	_funcptr_glGetVideoui64vNV = (PFNGLGETVIDEOUI64VNVPROC)FUNC0("glGetVideoui64vNV");
	if(!_funcptr_glGetVideoui64vNV) ++numFailed;
	_funcptr_glGetVideouivNV = (PFNGLGETVIDEOUIVNVPROC)FUNC0("glGetVideouivNV");
	if(!_funcptr_glGetVideouivNV) ++numFailed;
	_funcptr_glPresentFrameDualFillNV = (PFNGLPRESENTFRAMEDUALFILLNVPROC)FUNC0("glPresentFrameDualFillNV");
	if(!_funcptr_glPresentFrameDualFillNV) ++numFailed;
	_funcptr_glPresentFrameKeyedNV = (PFNGLPRESENTFRAMEKEYEDNVPROC)FUNC0("glPresentFrameKeyedNV");
	if(!_funcptr_glPresentFrameKeyedNV) ++numFailed;
	return numFailed;
}