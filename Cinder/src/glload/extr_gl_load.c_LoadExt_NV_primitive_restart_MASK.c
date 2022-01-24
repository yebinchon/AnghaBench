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
typedef  scalar_t__ PFNGLPRIMITIVERESTARTNVPROC ;
typedef  scalar_t__ PFNGLPRIMITIVERESTARTINDEXNVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glPrimitiveRestartIndexNV ; 
 scalar_t__ _funcptr_glPrimitiveRestartNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glPrimitiveRestartIndexNV = (PFNGLPRIMITIVERESTARTINDEXNVPROC)FUNC0("glPrimitiveRestartIndexNV");
	if(!_funcptr_glPrimitiveRestartIndexNV) ++numFailed;
	_funcptr_glPrimitiveRestartNV = (PFNGLPRIMITIVERESTARTNVPROC)FUNC0("glPrimitiveRestartNV");
	if(!_funcptr_glPrimitiveRestartNV) ++numFailed;
	return numFailed;
}