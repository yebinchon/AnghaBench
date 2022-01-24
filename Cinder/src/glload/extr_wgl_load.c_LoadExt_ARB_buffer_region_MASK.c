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
typedef  scalar_t__ PFNWGLSAVEBUFFERREGIONARBPROC ;
typedef  scalar_t__ PFNWGLRESTOREBUFFERREGIONARBPROC ;
typedef  scalar_t__ PFNWGLDELETEBUFFERREGIONARBPROC ;
typedef  scalar_t__ PFNWGLCREATEBUFFERREGIONARBPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_wglCreateBufferRegionARB ; 
 scalar_t__ _funcptr_wglDeleteBufferRegionARB ; 
 scalar_t__ _funcptr_wglRestoreBufferRegionARB ; 
 scalar_t__ _funcptr_wglSaveBufferRegionARB ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_wglCreateBufferRegionARB = (PFNWGLCREATEBUFFERREGIONARBPROC)FUNC0("wglCreateBufferRegionARB");
	if(!_funcptr_wglCreateBufferRegionARB) ++numFailed;
	_funcptr_wglDeleteBufferRegionARB = (PFNWGLDELETEBUFFERREGIONARBPROC)FUNC0("wglDeleteBufferRegionARB");
	if(!_funcptr_wglDeleteBufferRegionARB) ++numFailed;
	_funcptr_wglRestoreBufferRegionARB = (PFNWGLRESTOREBUFFERREGIONARBPROC)FUNC0("wglRestoreBufferRegionARB");
	if(!_funcptr_wglRestoreBufferRegionARB) ++numFailed;
	_funcptr_wglSaveBufferRegionARB = (PFNWGLSAVEBUFFERREGIONARBPROC)FUNC0("wglSaveBufferRegionARB");
	if(!_funcptr_wglSaveBufferRegionARB) ++numFailed;
	return numFailed;
}