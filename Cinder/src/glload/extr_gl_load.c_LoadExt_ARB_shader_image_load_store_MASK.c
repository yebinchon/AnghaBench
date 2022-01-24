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
typedef  scalar_t__ PFNGLMEMORYBARRIERPROC ;
typedef  scalar_t__ PFNGLBINDIMAGETEXTUREPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBindImageTexture ; 
 scalar_t__ _funcptr_glMemoryBarrier ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBindImageTexture = (PFNGLBINDIMAGETEXTUREPROC)FUNC0("glBindImageTexture");
	if(!_funcptr_glBindImageTexture) ++numFailed;
	_funcptr_glMemoryBarrier = (PFNGLMEMORYBARRIERPROC)FUNC0("glMemoryBarrier");
	if(!_funcptr_glMemoryBarrier) ++numFailed;
	return numFailed;
}