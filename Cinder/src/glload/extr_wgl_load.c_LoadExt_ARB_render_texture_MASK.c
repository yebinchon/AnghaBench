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
typedef  scalar_t__ PFNWGLSETPBUFFERATTRIBARBPROC ;
typedef  scalar_t__ PFNWGLRELEASETEXIMAGEARBPROC ;
typedef  scalar_t__ PFNWGLBINDTEXIMAGEARBPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_wglBindTexImageARB ; 
 scalar_t__ _funcptr_wglReleaseTexImageARB ; 
 scalar_t__ _funcptr_wglSetPbufferAttribARB ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_wglBindTexImageARB = (PFNWGLBINDTEXIMAGEARBPROC)FUNC0("wglBindTexImageARB");
	if(!_funcptr_wglBindTexImageARB) ++numFailed;
	_funcptr_wglReleaseTexImageARB = (PFNWGLRELEASETEXIMAGEARBPROC)FUNC0("wglReleaseTexImageARB");
	if(!_funcptr_wglReleaseTexImageARB) ++numFailed;
	_funcptr_wglSetPbufferAttribARB = (PFNWGLSETPBUFFERATTRIBARBPROC)FUNC0("wglSetPbufferAttribARB");
	if(!_funcptr_wglSetPbufferAttribARB) ++numFailed;
	return numFailed;
}