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
typedef  scalar_t__ PFNGLTEXPARAMETERIUIVEXTPROC ;
typedef  scalar_t__ PFNGLTEXPARAMETERIIVEXTPROC ;
typedef  scalar_t__ PFNGLGETTEXPARAMETERIUIVEXTPROC ;
typedef  scalar_t__ PFNGLGETTEXPARAMETERIIVEXTPROC ;
typedef  scalar_t__ PFNGLCLEARCOLORIUIEXTPROC ;
typedef  scalar_t__ PFNGLCLEARCOLORIIEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glClearColorIiEXT ; 
 scalar_t__ _funcptr_glClearColorIuiEXT ; 
 scalar_t__ _funcptr_glGetTexParameterIivEXT ; 
 scalar_t__ _funcptr_glGetTexParameterIuivEXT ; 
 scalar_t__ _funcptr_glTexParameterIivEXT ; 
 scalar_t__ _funcptr_glTexParameterIuivEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glClearColorIiEXT = (PFNGLCLEARCOLORIIEXTPROC)FUNC0("glClearColorIiEXT");
	if(!_funcptr_glClearColorIiEXT) ++numFailed;
	_funcptr_glClearColorIuiEXT = (PFNGLCLEARCOLORIUIEXTPROC)FUNC0("glClearColorIuiEXT");
	if(!_funcptr_glClearColorIuiEXT) ++numFailed;
	_funcptr_glGetTexParameterIivEXT = (PFNGLGETTEXPARAMETERIIVEXTPROC)FUNC0("glGetTexParameterIivEXT");
	if(!_funcptr_glGetTexParameterIivEXT) ++numFailed;
	_funcptr_glGetTexParameterIuivEXT = (PFNGLGETTEXPARAMETERIUIVEXTPROC)FUNC0("glGetTexParameterIuivEXT");
	if(!_funcptr_glGetTexParameterIuivEXT) ++numFailed;
	_funcptr_glTexParameterIivEXT = (PFNGLTEXPARAMETERIIVEXTPROC)FUNC0("glTexParameterIivEXT");
	if(!_funcptr_glTexParameterIivEXT) ++numFailed;
	_funcptr_glTexParameterIuivEXT = (PFNGLTEXPARAMETERIUIVEXTPROC)FUNC0("glTexParameterIuivEXT");
	if(!_funcptr_glTexParameterIuivEXT) ++numFailed;
	return numFailed;
}