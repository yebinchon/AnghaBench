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
typedef  scalar_t__ PFNGLXQUERYCHANNELRECTSGIXPROC ;
typedef  scalar_t__ PFNGLXQUERYCHANNELDELTASSGIXPROC ;
typedef  scalar_t__ PFNGLXCHANNELRECTSYNCSGIXPROC ;
typedef  scalar_t__ PFNGLXCHANNELRECTSGIXPROC ;
typedef  scalar_t__ PFNGLXBINDCHANNELTOWINDOWSGIXPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glXBindChannelToWindowSGIX ; 
 scalar_t__ _funcptr_glXChannelRectSGIX ; 
 scalar_t__ _funcptr_glXChannelRectSyncSGIX ; 
 scalar_t__ _funcptr_glXQueryChannelDeltasSGIX ; 
 scalar_t__ _funcptr_glXQueryChannelRectSGIX ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glXBindChannelToWindowSGIX = (PFNGLXBINDCHANNELTOWINDOWSGIXPROC)FUNC0("glXBindChannelToWindowSGIX");
	if(!_funcptr_glXBindChannelToWindowSGIX) ++numFailed;
	_funcptr_glXChannelRectSGIX = (PFNGLXCHANNELRECTSGIXPROC)FUNC0("glXChannelRectSGIX");
	if(!_funcptr_glXChannelRectSGIX) ++numFailed;
	_funcptr_glXChannelRectSyncSGIX = (PFNGLXCHANNELRECTSYNCSGIXPROC)FUNC0("glXChannelRectSyncSGIX");
	if(!_funcptr_glXChannelRectSyncSGIX) ++numFailed;
	_funcptr_glXQueryChannelDeltasSGIX = (PFNGLXQUERYCHANNELDELTASSGIXPROC)FUNC0("glXQueryChannelDeltasSGIX");
	if(!_funcptr_glXQueryChannelDeltasSGIX) ++numFailed;
	_funcptr_glXQueryChannelRectSGIX = (PFNGLXQUERYCHANNELRECTSGIXPROC)FUNC0("glXQueryChannelRectSGIX");
	if(!_funcptr_glXQueryChannelRectSGIX) ++numFailed;
	return numFailed;
}