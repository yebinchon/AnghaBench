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
typedef  scalar_t__ PFNGLTEXFILTERFUNCSGISPROC ;
typedef  scalar_t__ PFNGLGETTEXFILTERFUNCSGISPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetTexFilterFuncSGIS ; 
 scalar_t__ _funcptr_glTexFilterFuncSGIS ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetTexFilterFuncSGIS = (PFNGLGETTEXFILTERFUNCSGISPROC)FUNC0("glGetTexFilterFuncSGIS");
	if(!_funcptr_glGetTexFilterFuncSGIS) ++numFailed;
	_funcptr_glTexFilterFuncSGIS = (PFNGLTEXFILTERFUNCSGISPROC)FUNC0("glTexFilterFuncSGIS");
	if(!_funcptr_glTexFilterFuncSGIS) ++numFailed;
	return numFailed;
}