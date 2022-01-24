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
typedef  scalar_t__ PFNWGLLOADDISPLAYCOLORTABLEEXTPROC ;
typedef  scalar_t__ PFNWGLDESTROYDISPLAYCOLORTABLEEXTPROC ;
typedef  scalar_t__ PFNWGLCREATEDISPLAYCOLORTABLEEXTPROC ;
typedef  scalar_t__ PFNWGLBINDDISPLAYCOLORTABLEEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_wglBindDisplayColorTableEXT ; 
 scalar_t__ _funcptr_wglCreateDisplayColorTableEXT ; 
 scalar_t__ _funcptr_wglDestroyDisplayColorTableEXT ; 
 scalar_t__ _funcptr_wglLoadDisplayColorTableEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_wglBindDisplayColorTableEXT = (PFNWGLBINDDISPLAYCOLORTABLEEXTPROC)FUNC0("wglBindDisplayColorTableEXT");
	if(!_funcptr_wglBindDisplayColorTableEXT) ++numFailed;
	_funcptr_wglCreateDisplayColorTableEXT = (PFNWGLCREATEDISPLAYCOLORTABLEEXTPROC)FUNC0("wglCreateDisplayColorTableEXT");
	if(!_funcptr_wglCreateDisplayColorTableEXT) ++numFailed;
	_funcptr_wglDestroyDisplayColorTableEXT = (PFNWGLDESTROYDISPLAYCOLORTABLEEXTPROC)FUNC0("wglDestroyDisplayColorTableEXT");
	if(!_funcptr_wglDestroyDisplayColorTableEXT) ++numFailed;
	_funcptr_wglLoadDisplayColorTableEXT = (PFNWGLLOADDISPLAYCOLORTABLEEXTPROC)FUNC0("wglLoadDisplayColorTableEXT");
	if(!_funcptr_wglLoadDisplayColorTableEXT) ++numFailed;
	return numFailed;
}