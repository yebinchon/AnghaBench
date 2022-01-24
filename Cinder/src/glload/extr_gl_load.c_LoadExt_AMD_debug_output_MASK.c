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
typedef  scalar_t__ PFNGLGETDEBUGMESSAGELOGAMDPROC ;
typedef  scalar_t__ PFNGLDEBUGMESSAGEINSERTAMDPROC ;
typedef  scalar_t__ PFNGLDEBUGMESSAGEENABLEAMDPROC ;
typedef  scalar_t__ PFNGLDEBUGMESSAGECALLBACKAMDPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glDebugMessageCallbackAMD ; 
 scalar_t__ _funcptr_glDebugMessageEnableAMD ; 
 scalar_t__ _funcptr_glDebugMessageInsertAMD ; 
 scalar_t__ _funcptr_glGetDebugMessageLogAMD ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glDebugMessageCallbackAMD = (PFNGLDEBUGMESSAGECALLBACKAMDPROC)FUNC0("glDebugMessageCallbackAMD");
	if(!_funcptr_glDebugMessageCallbackAMD) ++numFailed;
	_funcptr_glDebugMessageEnableAMD = (PFNGLDEBUGMESSAGEENABLEAMDPROC)FUNC0("glDebugMessageEnableAMD");
	if(!_funcptr_glDebugMessageEnableAMD) ++numFailed;
	_funcptr_glDebugMessageInsertAMD = (PFNGLDEBUGMESSAGEINSERTAMDPROC)FUNC0("glDebugMessageInsertAMD");
	if(!_funcptr_glDebugMessageInsertAMD) ++numFailed;
	_funcptr_glGetDebugMessageLogAMD = (PFNGLGETDEBUGMESSAGELOGAMDPROC)FUNC0("glGetDebugMessageLogAMD");
	if(!_funcptr_glGetDebugMessageLogAMD) ++numFailed;
	return numFailed;
}