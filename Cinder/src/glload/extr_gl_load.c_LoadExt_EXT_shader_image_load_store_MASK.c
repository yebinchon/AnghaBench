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
typedef  scalar_t__ PFNGLMEMORYBARRIEREXTPROC ;
typedef  scalar_t__ PFNGLBINDIMAGETEXTUREEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBindImageTextureEXT ; 
 scalar_t__ _funcptr_glMemoryBarrierEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBindImageTextureEXT = (PFNGLBINDIMAGETEXTUREEXTPROC)FUNC0("glBindImageTextureEXT");
	if(!_funcptr_glBindImageTextureEXT) ++numFailed;
	_funcptr_glMemoryBarrierEXT = (PFNGLMEMORYBARRIEREXTPROC)FUNC0("glMemoryBarrierEXT");
	if(!_funcptr_glMemoryBarrierEXT) ++numFailed;
	return numFailed;
}