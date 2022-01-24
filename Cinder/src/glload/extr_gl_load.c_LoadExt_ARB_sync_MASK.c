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
typedef  scalar_t__ PFNGLWAITSYNCPROC ;
typedef  scalar_t__ PFNGLISSYNCPROC ;
typedef  scalar_t__ PFNGLGETSYNCIVPROC ;
typedef  scalar_t__ PFNGLGETINTEGER64VPROC ;
typedef  scalar_t__ PFNGLFENCESYNCPROC ;
typedef  scalar_t__ PFNGLDELETESYNCPROC ;
typedef  scalar_t__ PFNGLCLIENTWAITSYNCPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glClientWaitSync ; 
 scalar_t__ _funcptr_glDeleteSync ; 
 scalar_t__ _funcptr_glFenceSync ; 
 scalar_t__ _funcptr_glGetInteger64v ; 
 scalar_t__ _funcptr_glGetSynciv ; 
 scalar_t__ _funcptr_glIsSync ; 
 scalar_t__ _funcptr_glWaitSync ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glClientWaitSync = (PFNGLCLIENTWAITSYNCPROC)FUNC0("glClientWaitSync");
	if(!_funcptr_glClientWaitSync) ++numFailed;
	_funcptr_glDeleteSync = (PFNGLDELETESYNCPROC)FUNC0("glDeleteSync");
	if(!_funcptr_glDeleteSync) ++numFailed;
	_funcptr_glFenceSync = (PFNGLFENCESYNCPROC)FUNC0("glFenceSync");
	if(!_funcptr_glFenceSync) ++numFailed;
	_funcptr_glGetInteger64v = (PFNGLGETINTEGER64VPROC)FUNC0("glGetInteger64v");
	if(!_funcptr_glGetInteger64v) ++numFailed;
	_funcptr_glGetSynciv = (PFNGLGETSYNCIVPROC)FUNC0("glGetSynciv");
	if(!_funcptr_glGetSynciv) ++numFailed;
	_funcptr_glIsSync = (PFNGLISSYNCPROC)FUNC0("glIsSync");
	if(!_funcptr_glIsSync) ++numFailed;
	_funcptr_glWaitSync = (PFNGLWAITSYNCPROC)FUNC0("glWaitSync");
	if(!_funcptr_glWaitSync) ++numFailed;
	return numFailed;
}