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
typedef  scalar_t__ PFNGLWINDOWPOS3SVARBPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS3SARBPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS3IVARBPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS3IARBPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS3FVARBPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS3FARBPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS3DVARBPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS3DARBPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS2SVARBPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS2SARBPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS2IVARBPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS2IARBPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS2FVARBPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS2FARBPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS2DVARBPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS2DARBPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glWindowPos2dARB ; 
 scalar_t__ _funcptr_glWindowPos2dvARB ; 
 scalar_t__ _funcptr_glWindowPos2fARB ; 
 scalar_t__ _funcptr_glWindowPos2fvARB ; 
 scalar_t__ _funcptr_glWindowPos2iARB ; 
 scalar_t__ _funcptr_glWindowPos2ivARB ; 
 scalar_t__ _funcptr_glWindowPos2sARB ; 
 scalar_t__ _funcptr_glWindowPos2svARB ; 
 scalar_t__ _funcptr_glWindowPos3dARB ; 
 scalar_t__ _funcptr_glWindowPos3dvARB ; 
 scalar_t__ _funcptr_glWindowPos3fARB ; 
 scalar_t__ _funcptr_glWindowPos3fvARB ; 
 scalar_t__ _funcptr_glWindowPos3iARB ; 
 scalar_t__ _funcptr_glWindowPos3ivARB ; 
 scalar_t__ _funcptr_glWindowPos3sARB ; 
 scalar_t__ _funcptr_glWindowPos3svARB ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glWindowPos2dARB = (PFNGLWINDOWPOS2DARBPROC)FUNC0("glWindowPos2dARB");
	if(!_funcptr_glWindowPos2dARB) ++numFailed;
	_funcptr_glWindowPos2dvARB = (PFNGLWINDOWPOS2DVARBPROC)FUNC0("glWindowPos2dvARB");
	if(!_funcptr_glWindowPos2dvARB) ++numFailed;
	_funcptr_glWindowPos2fARB = (PFNGLWINDOWPOS2FARBPROC)FUNC0("glWindowPos2fARB");
	if(!_funcptr_glWindowPos2fARB) ++numFailed;
	_funcptr_glWindowPos2fvARB = (PFNGLWINDOWPOS2FVARBPROC)FUNC0("glWindowPos2fvARB");
	if(!_funcptr_glWindowPos2fvARB) ++numFailed;
	_funcptr_glWindowPos2iARB = (PFNGLWINDOWPOS2IARBPROC)FUNC0("glWindowPos2iARB");
	if(!_funcptr_glWindowPos2iARB) ++numFailed;
	_funcptr_glWindowPos2ivARB = (PFNGLWINDOWPOS2IVARBPROC)FUNC0("glWindowPos2ivARB");
	if(!_funcptr_glWindowPos2ivARB) ++numFailed;
	_funcptr_glWindowPos2sARB = (PFNGLWINDOWPOS2SARBPROC)FUNC0("glWindowPos2sARB");
	if(!_funcptr_glWindowPos2sARB) ++numFailed;
	_funcptr_glWindowPos2svARB = (PFNGLWINDOWPOS2SVARBPROC)FUNC0("glWindowPos2svARB");
	if(!_funcptr_glWindowPos2svARB) ++numFailed;
	_funcptr_glWindowPos3dARB = (PFNGLWINDOWPOS3DARBPROC)FUNC0("glWindowPos3dARB");
	if(!_funcptr_glWindowPos3dARB) ++numFailed;
	_funcptr_glWindowPos3dvARB = (PFNGLWINDOWPOS3DVARBPROC)FUNC0("glWindowPos3dvARB");
	if(!_funcptr_glWindowPos3dvARB) ++numFailed;
	_funcptr_glWindowPos3fARB = (PFNGLWINDOWPOS3FARBPROC)FUNC0("glWindowPos3fARB");
	if(!_funcptr_glWindowPos3fARB) ++numFailed;
	_funcptr_glWindowPos3fvARB = (PFNGLWINDOWPOS3FVARBPROC)FUNC0("glWindowPos3fvARB");
	if(!_funcptr_glWindowPos3fvARB) ++numFailed;
	_funcptr_glWindowPos3iARB = (PFNGLWINDOWPOS3IARBPROC)FUNC0("glWindowPos3iARB");
	if(!_funcptr_glWindowPos3iARB) ++numFailed;
	_funcptr_glWindowPos3ivARB = (PFNGLWINDOWPOS3IVARBPROC)FUNC0("glWindowPos3ivARB");
	if(!_funcptr_glWindowPos3ivARB) ++numFailed;
	_funcptr_glWindowPos3sARB = (PFNGLWINDOWPOS3SARBPROC)FUNC0("glWindowPos3sARB");
	if(!_funcptr_glWindowPos3sARB) ++numFailed;
	_funcptr_glWindowPos3svARB = (PFNGLWINDOWPOS3SVARBPROC)FUNC0("glWindowPos3svARB");
	if(!_funcptr_glWindowPos3svARB) ++numFailed;
	return numFailed;
}