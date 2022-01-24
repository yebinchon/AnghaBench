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
typedef  scalar_t__ PFNWGLGETPIXELFORMATATTRIBIVEXTPROC ;
typedef  scalar_t__ PFNWGLGETPIXELFORMATATTRIBFVEXTPROC ;
typedef  scalar_t__ PFNWGLCHOOSEPIXELFORMATEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_wglChoosePixelFormatEXT ; 
 scalar_t__ _funcptr_wglGetPixelFormatAttribfvEXT ; 
 scalar_t__ _funcptr_wglGetPixelFormatAttribivEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_wglChoosePixelFormatEXT = (PFNWGLCHOOSEPIXELFORMATEXTPROC)FUNC0("wglChoosePixelFormatEXT");
	if(!_funcptr_wglChoosePixelFormatEXT) ++numFailed;
	_funcptr_wglGetPixelFormatAttribfvEXT = (PFNWGLGETPIXELFORMATATTRIBFVEXTPROC)FUNC0("wglGetPixelFormatAttribfvEXT");
	if(!_funcptr_wglGetPixelFormatAttribfvEXT) ++numFailed;
	_funcptr_wglGetPixelFormatAttribivEXT = (PFNWGLGETPIXELFORMATATTRIBIVEXTPROC)FUNC0("wglGetPixelFormatAttribivEXT");
	if(!_funcptr_wglGetPixelFormatAttribivEXT) ++numFailed;
	return numFailed;
}