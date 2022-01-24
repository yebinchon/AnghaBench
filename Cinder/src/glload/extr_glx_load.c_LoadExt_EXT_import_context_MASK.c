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
typedef  scalar_t__ PFNGLXQUERYCONTEXTINFOEXTPROC ;
typedef  scalar_t__ PFNGLXIMPORTCONTEXTEXTPROC ;
typedef  scalar_t__ PFNGLXGETCURRENTDISPLAYEXTPROC ;
typedef  scalar_t__ PFNGLXGETCONTEXTIDEXTPROC ;
typedef  scalar_t__ PFNGLXFREECONTEXTEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glXFreeContextEXT ; 
 scalar_t__ _funcptr_glXGetContextIDEXT ; 
 scalar_t__ _funcptr_glXGetCurrentDisplayEXT ; 
 scalar_t__ _funcptr_glXImportContextEXT ; 
 scalar_t__ _funcptr_glXQueryContextInfoEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glXFreeContextEXT = (PFNGLXFREECONTEXTEXTPROC)FUNC0("glXFreeContextEXT");
	if(!_funcptr_glXFreeContextEXT) ++numFailed;
	_funcptr_glXGetContextIDEXT = (PFNGLXGETCONTEXTIDEXTPROC)FUNC0("glXGetContextIDEXT");
	if(!_funcptr_glXGetContextIDEXT) ++numFailed;
	_funcptr_glXGetCurrentDisplayEXT = (PFNGLXGETCURRENTDISPLAYEXTPROC)FUNC0("glXGetCurrentDisplayEXT");
	if(!_funcptr_glXGetCurrentDisplayEXT) ++numFailed;
	_funcptr_glXImportContextEXT = (PFNGLXIMPORTCONTEXTEXTPROC)FUNC0("glXImportContextEXT");
	if(!_funcptr_glXImportContextEXT) ++numFailed;
	_funcptr_glXQueryContextInfoEXT = (PFNGLXQUERYCONTEXTINFOEXTPROC)FUNC0("glXQueryContextInfoEXT");
	if(!_funcptr_glXQueryContextInfoEXT) ++numFailed;
	return numFailed;
}