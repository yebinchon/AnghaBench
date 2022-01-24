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
typedef  scalar_t__ PFNGLBLENDPARAMETERINVPROC ;
typedef  scalar_t__ PFNGLBLENDBARRIERNVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBlendBarrierNV ; 
 scalar_t__ _funcptr_glBlendParameteriNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBlendBarrierNV = (PFNGLBLENDBARRIERNVPROC)FUNC0("glBlendBarrierNV");
	if(!_funcptr_glBlendBarrierNV) ++numFailed;
	_funcptr_glBlendParameteriNV = (PFNGLBLENDPARAMETERINVPROC)FUNC0("glBlendParameteriNV");
	if(!_funcptr_glBlendParameteriNV) ++numFailed;
	return numFailed;
}