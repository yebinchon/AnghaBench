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
typedef  scalar_t__ PFNGLMATRIXINDEXUSVARBPROC ;
typedef  scalar_t__ PFNGLMATRIXINDEXUIVARBPROC ;
typedef  scalar_t__ PFNGLMATRIXINDEXUBVARBPROC ;
typedef  scalar_t__ PFNGLMATRIXINDEXPOINTERARBPROC ;
typedef  scalar_t__ PFNGLCURRENTPALETTEMATRIXARBPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glCurrentPaletteMatrixARB ; 
 scalar_t__ _funcptr_glMatrixIndexPointerARB ; 
 scalar_t__ _funcptr_glMatrixIndexubvARB ; 
 scalar_t__ _funcptr_glMatrixIndexuivARB ; 
 scalar_t__ _funcptr_glMatrixIndexusvARB ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glCurrentPaletteMatrixARB = (PFNGLCURRENTPALETTEMATRIXARBPROC)FUNC0("glCurrentPaletteMatrixARB");
	if(!_funcptr_glCurrentPaletteMatrixARB) ++numFailed;
	_funcptr_glMatrixIndexPointerARB = (PFNGLMATRIXINDEXPOINTERARBPROC)FUNC0("glMatrixIndexPointerARB");
	if(!_funcptr_glMatrixIndexPointerARB) ++numFailed;
	_funcptr_glMatrixIndexubvARB = (PFNGLMATRIXINDEXUBVARBPROC)FUNC0("glMatrixIndexubvARB");
	if(!_funcptr_glMatrixIndexubvARB) ++numFailed;
	_funcptr_glMatrixIndexuivARB = (PFNGLMATRIXINDEXUIVARBPROC)FUNC0("glMatrixIndexuivARB");
	if(!_funcptr_glMatrixIndexuivARB) ++numFailed;
	_funcptr_glMatrixIndexusvARB = (PFNGLMATRIXINDEXUSVARBPROC)FUNC0("glMatrixIndexusvARB");
	if(!_funcptr_glMatrixIndexusvARB) ++numFailed;
	return numFailed;
}