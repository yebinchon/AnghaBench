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
typedef  scalar_t__ PFNGLSAMPLEPATTERNSGISPROC ;
typedef  scalar_t__ PFNGLSAMPLEMASKSGISPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glSampleMaskSGIS ; 
 scalar_t__ _funcptr_glSamplePatternSGIS ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glSampleMaskSGIS = (PFNGLSAMPLEMASKSGISPROC)FUNC0("glSampleMaskSGIS");
	if(!_funcptr_glSampleMaskSGIS) ++numFailed;
	_funcptr_glSamplePatternSGIS = (PFNGLSAMPLEPATTERNSGISPROC)FUNC0("glSamplePatternSGIS");
	if(!_funcptr_glSamplePatternSGIS) ++numFailed;
	return numFailed;
}