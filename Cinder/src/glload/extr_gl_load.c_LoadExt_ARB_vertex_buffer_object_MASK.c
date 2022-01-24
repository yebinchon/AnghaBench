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
typedef  scalar_t__ PFNGLUNMAPBUFFERARBPROC ;
typedef  scalar_t__ PFNGLMAPBUFFERARBPROC ;
typedef  scalar_t__ PFNGLISBUFFERARBPROC ;
typedef  scalar_t__ PFNGLGETBUFFERSUBDATAARBPROC ;
typedef  scalar_t__ PFNGLGETBUFFERPOINTERVARBPROC ;
typedef  scalar_t__ PFNGLGETBUFFERPARAMETERIVARBPROC ;
typedef  scalar_t__ PFNGLGENBUFFERSARBPROC ;
typedef  scalar_t__ PFNGLDELETEBUFFERSARBPROC ;
typedef  scalar_t__ PFNGLBUFFERSUBDATAARBPROC ;
typedef  scalar_t__ PFNGLBUFFERDATAARBPROC ;
typedef  scalar_t__ PFNGLBINDBUFFERARBPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBindBufferARB ; 
 scalar_t__ _funcptr_glBufferDataARB ; 
 scalar_t__ _funcptr_glBufferSubDataARB ; 
 scalar_t__ _funcptr_glDeleteBuffersARB ; 
 scalar_t__ _funcptr_glGenBuffersARB ; 
 scalar_t__ _funcptr_glGetBufferParameterivARB ; 
 scalar_t__ _funcptr_glGetBufferPointervARB ; 
 scalar_t__ _funcptr_glGetBufferSubDataARB ; 
 scalar_t__ _funcptr_glIsBufferARB ; 
 scalar_t__ _funcptr_glMapBufferARB ; 
 scalar_t__ _funcptr_glUnmapBufferARB ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBindBufferARB = (PFNGLBINDBUFFERARBPROC)FUNC0("glBindBufferARB");
	if(!_funcptr_glBindBufferARB) ++numFailed;
	_funcptr_glBufferDataARB = (PFNGLBUFFERDATAARBPROC)FUNC0("glBufferDataARB");
	if(!_funcptr_glBufferDataARB) ++numFailed;
	_funcptr_glBufferSubDataARB = (PFNGLBUFFERSUBDATAARBPROC)FUNC0("glBufferSubDataARB");
	if(!_funcptr_glBufferSubDataARB) ++numFailed;
	_funcptr_glDeleteBuffersARB = (PFNGLDELETEBUFFERSARBPROC)FUNC0("glDeleteBuffersARB");
	if(!_funcptr_glDeleteBuffersARB) ++numFailed;
	_funcptr_glGenBuffersARB = (PFNGLGENBUFFERSARBPROC)FUNC0("glGenBuffersARB");
	if(!_funcptr_glGenBuffersARB) ++numFailed;
	_funcptr_glGetBufferParameterivARB = (PFNGLGETBUFFERPARAMETERIVARBPROC)FUNC0("glGetBufferParameterivARB");
	if(!_funcptr_glGetBufferParameterivARB) ++numFailed;
	_funcptr_glGetBufferPointervARB = (PFNGLGETBUFFERPOINTERVARBPROC)FUNC0("glGetBufferPointervARB");
	if(!_funcptr_glGetBufferPointervARB) ++numFailed;
	_funcptr_glGetBufferSubDataARB = (PFNGLGETBUFFERSUBDATAARBPROC)FUNC0("glGetBufferSubDataARB");
	if(!_funcptr_glGetBufferSubDataARB) ++numFailed;
	_funcptr_glIsBufferARB = (PFNGLISBUFFERARBPROC)FUNC0("glIsBufferARB");
	if(!_funcptr_glIsBufferARB) ++numFailed;
	_funcptr_glMapBufferARB = (PFNGLMAPBUFFERARBPROC)FUNC0("glMapBufferARB");
	if(!_funcptr_glMapBufferARB) ++numFailed;
	_funcptr_glUnmapBufferARB = (PFNGLUNMAPBUFFERARBPROC)FUNC0("glUnmapBufferARB");
	if(!_funcptr_glUnmapBufferARB) ++numFailed;
	return numFailed;
}