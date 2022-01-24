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
typedef  scalar_t__ PFNGLUNMAPBUFFERPROC ;
typedef  scalar_t__ PFNGLMAPBUFFERPROC ;
typedef  scalar_t__ PFNGLISQUERYPROC ;
typedef  scalar_t__ PFNGLISBUFFERPROC ;
typedef  scalar_t__ PFNGLGETQUERYOBJECTUIVPROC ;
typedef  scalar_t__ PFNGLGETQUERYOBJECTIVPROC ;
typedef  scalar_t__ PFNGLGETQUERYIVPROC ;
typedef  scalar_t__ PFNGLGETBUFFERSUBDATAPROC ;
typedef  scalar_t__ PFNGLGETBUFFERPOINTERVPROC ;
typedef  scalar_t__ PFNGLGETBUFFERPARAMETERIVPROC ;
typedef  scalar_t__ PFNGLGENQUERIESPROC ;
typedef  scalar_t__ PFNGLGENBUFFERSPROC ;
typedef  scalar_t__ PFNGLENDQUERYPROC ;
typedef  scalar_t__ PFNGLDELETEQUERIESPROC ;
typedef  scalar_t__ PFNGLDELETEBUFFERSPROC ;
typedef  scalar_t__ PFNGLBUFFERSUBDATAPROC ;
typedef  scalar_t__ PFNGLBUFFERDATAPROC ;
typedef  scalar_t__ PFNGLBINDBUFFERPROC ;
typedef  scalar_t__ PFNGLBEGINQUERYPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBeginQuery ; 
 scalar_t__ _funcptr_glBindBuffer ; 
 scalar_t__ _funcptr_glBufferData ; 
 scalar_t__ _funcptr_glBufferSubData ; 
 scalar_t__ _funcptr_glDeleteBuffers ; 
 scalar_t__ _funcptr_glDeleteQueries ; 
 scalar_t__ _funcptr_glEndQuery ; 
 scalar_t__ _funcptr_glGenBuffers ; 
 scalar_t__ _funcptr_glGenQueries ; 
 scalar_t__ _funcptr_glGetBufferParameteriv ; 
 scalar_t__ _funcptr_glGetBufferPointerv ; 
 scalar_t__ _funcptr_glGetBufferSubData ; 
 scalar_t__ _funcptr_glGetQueryObjectiv ; 
 scalar_t__ _funcptr_glGetQueryObjectuiv ; 
 scalar_t__ _funcptr_glGetQueryiv ; 
 scalar_t__ _funcptr_glIsBuffer ; 
 scalar_t__ _funcptr_glIsQuery ; 
 scalar_t__ _funcptr_glMapBuffer ; 
 scalar_t__ _funcptr_glUnmapBuffer ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBeginQuery = (PFNGLBEGINQUERYPROC)FUNC0("glBeginQuery");
	if(!_funcptr_glBeginQuery) ++numFailed;
	_funcptr_glBindBuffer = (PFNGLBINDBUFFERPROC)FUNC0("glBindBuffer");
	if(!_funcptr_glBindBuffer) ++numFailed;
	_funcptr_glBufferData = (PFNGLBUFFERDATAPROC)FUNC0("glBufferData");
	if(!_funcptr_glBufferData) ++numFailed;
	_funcptr_glBufferSubData = (PFNGLBUFFERSUBDATAPROC)FUNC0("glBufferSubData");
	if(!_funcptr_glBufferSubData) ++numFailed;
	_funcptr_glDeleteBuffers = (PFNGLDELETEBUFFERSPROC)FUNC0("glDeleteBuffers");
	if(!_funcptr_glDeleteBuffers) ++numFailed;
	_funcptr_glDeleteQueries = (PFNGLDELETEQUERIESPROC)FUNC0("glDeleteQueries");
	if(!_funcptr_glDeleteQueries) ++numFailed;
	_funcptr_glEndQuery = (PFNGLENDQUERYPROC)FUNC0("glEndQuery");
	if(!_funcptr_glEndQuery) ++numFailed;
	_funcptr_glGenBuffers = (PFNGLGENBUFFERSPROC)FUNC0("glGenBuffers");
	if(!_funcptr_glGenBuffers) ++numFailed;
	_funcptr_glGenQueries = (PFNGLGENQUERIESPROC)FUNC0("glGenQueries");
	if(!_funcptr_glGenQueries) ++numFailed;
	_funcptr_glGetBufferParameteriv = (PFNGLGETBUFFERPARAMETERIVPROC)FUNC0("glGetBufferParameteriv");
	if(!_funcptr_glGetBufferParameteriv) ++numFailed;
	_funcptr_glGetBufferPointerv = (PFNGLGETBUFFERPOINTERVPROC)FUNC0("glGetBufferPointerv");
	if(!_funcptr_glGetBufferPointerv) ++numFailed;
	_funcptr_glGetBufferSubData = (PFNGLGETBUFFERSUBDATAPROC)FUNC0("glGetBufferSubData");
	if(!_funcptr_glGetBufferSubData) ++numFailed;
	_funcptr_glGetQueryObjectiv = (PFNGLGETQUERYOBJECTIVPROC)FUNC0("glGetQueryObjectiv");
	if(!_funcptr_glGetQueryObjectiv) ++numFailed;
	_funcptr_glGetQueryObjectuiv = (PFNGLGETQUERYOBJECTUIVPROC)FUNC0("glGetQueryObjectuiv");
	if(!_funcptr_glGetQueryObjectuiv) ++numFailed;
	_funcptr_glGetQueryiv = (PFNGLGETQUERYIVPROC)FUNC0("glGetQueryiv");
	if(!_funcptr_glGetQueryiv) ++numFailed;
	_funcptr_glIsBuffer = (PFNGLISBUFFERPROC)FUNC0("glIsBuffer");
	if(!_funcptr_glIsBuffer) ++numFailed;
	_funcptr_glIsQuery = (PFNGLISQUERYPROC)FUNC0("glIsQuery");
	if(!_funcptr_glIsQuery) ++numFailed;
	_funcptr_glMapBuffer = (PFNGLMAPBUFFERPROC)FUNC0("glMapBuffer");
	if(!_funcptr_glMapBuffer) ++numFailed;
	_funcptr_glUnmapBuffer = (PFNGLUNMAPBUFFERPROC)FUNC0("glUnmapBuffer");
	if(!_funcptr_glUnmapBuffer) ++numFailed;
	return numFailed;
}