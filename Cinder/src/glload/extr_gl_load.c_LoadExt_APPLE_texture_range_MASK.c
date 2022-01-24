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
typedef  scalar_t__ PFNGLTEXTURERANGEAPPLEPROC ;
typedef  scalar_t__ PFNGLGETTEXPARAMETERPOINTERVAPPLEPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetTexParameterPointervAPPLE ; 
 scalar_t__ _funcptr_glTextureRangeAPPLE ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetTexParameterPointervAPPLE = (PFNGLGETTEXPARAMETERPOINTERVAPPLEPROC)FUNC0("glGetTexParameterPointervAPPLE");
	if(!_funcptr_glGetTexParameterPointervAPPLE) ++numFailed;
	_funcptr_glTextureRangeAPPLE = (PFNGLTEXTURERANGEAPPLEPROC)FUNC0("glTextureRangeAPPLE");
	if(!_funcptr_glTextureRangeAPPLE) ++numFailed;
	return numFailed;
}