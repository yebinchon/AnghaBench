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
typedef  scalar_t__ PFNGLPOLLASYNCSGIXPROC ;
typedef  scalar_t__ PFNGLISASYNCMARKERSGIXPROC ;
typedef  scalar_t__ PFNGLGENASYNCMARKERSSGIXPROC ;
typedef  scalar_t__ PFNGLFINISHASYNCSGIXPROC ;
typedef  scalar_t__ PFNGLDELETEASYNCMARKERSSGIXPROC ;
typedef  scalar_t__ PFNGLASYNCMARKERSGIXPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glAsyncMarkerSGIX ; 
 scalar_t__ _funcptr_glDeleteAsyncMarkersSGIX ; 
 scalar_t__ _funcptr_glFinishAsyncSGIX ; 
 scalar_t__ _funcptr_glGenAsyncMarkersSGIX ; 
 scalar_t__ _funcptr_glIsAsyncMarkerSGIX ; 
 scalar_t__ _funcptr_glPollAsyncSGIX ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glAsyncMarkerSGIX = (PFNGLASYNCMARKERSGIXPROC)FUNC0("glAsyncMarkerSGIX");
	if(!_funcptr_glAsyncMarkerSGIX) ++numFailed;
	_funcptr_glDeleteAsyncMarkersSGIX = (PFNGLDELETEASYNCMARKERSSGIXPROC)FUNC0("glDeleteAsyncMarkersSGIX");
	if(!_funcptr_glDeleteAsyncMarkersSGIX) ++numFailed;
	_funcptr_glFinishAsyncSGIX = (PFNGLFINISHASYNCSGIXPROC)FUNC0("glFinishAsyncSGIX");
	if(!_funcptr_glFinishAsyncSGIX) ++numFailed;
	_funcptr_glGenAsyncMarkersSGIX = (PFNGLGENASYNCMARKERSSGIXPROC)FUNC0("glGenAsyncMarkersSGIX");
	if(!_funcptr_glGenAsyncMarkersSGIX) ++numFailed;
	_funcptr_glIsAsyncMarkerSGIX = (PFNGLISASYNCMARKERSGIXPROC)FUNC0("glIsAsyncMarkerSGIX");
	if(!_funcptr_glIsAsyncMarkerSGIX) ++numFailed;
	_funcptr_glPollAsyncSGIX = (PFNGLPOLLASYNCSGIXPROC)FUNC0("glPollAsyncSGIX");
	if(!_funcptr_glPollAsyncSGIX) ++numFailed;
	return numFailed;
}