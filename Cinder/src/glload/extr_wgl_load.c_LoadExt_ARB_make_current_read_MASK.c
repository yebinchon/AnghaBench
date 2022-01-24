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
typedef  scalar_t__ PFNWGLMAKECONTEXTCURRENTARBPROC ;
typedef  scalar_t__ PFNWGLGETCURRENTREADDCARBPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_wglGetCurrentReadDCARB ; 
 scalar_t__ _funcptr_wglMakeContextCurrentARB ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_wglGetCurrentReadDCARB = (PFNWGLGETCURRENTREADDCARBPROC)FUNC0("wglGetCurrentReadDCARB");
	if(!_funcptr_wglGetCurrentReadDCARB) ++numFailed;
	_funcptr_wglMakeContextCurrentARB = (PFNWGLMAKECONTEXTCURRENTARBPROC)FUNC0("wglMakeContextCurrentARB");
	if(!_funcptr_wglMakeContextCurrentARB) ++numFailed;
	return numFailed;
}