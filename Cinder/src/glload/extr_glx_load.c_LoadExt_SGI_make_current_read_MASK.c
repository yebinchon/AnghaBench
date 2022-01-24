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
typedef  scalar_t__ PFNGLXMAKECURRENTREADSGIPROC ;
typedef  scalar_t__ PFNGLXGETCURRENTREADDRAWABLESGIPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glXGetCurrentReadDrawableSGI ; 
 scalar_t__ _funcptr_glXMakeCurrentReadSGI ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glXGetCurrentReadDrawableSGI = (PFNGLXGETCURRENTREADDRAWABLESGIPROC)FUNC0("glXGetCurrentReadDrawableSGI");
	if(!_funcptr_glXGetCurrentReadDrawableSGI) ++numFailed;
	_funcptr_glXMakeCurrentReadSGI = (PFNGLXMAKECURRENTREADSGIPROC)FUNC0("glXMakeCurrentReadSGI");
	if(!_funcptr_glXMakeCurrentReadSGI) ++numFailed;
	return numFailed;
}