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
typedef  scalar_t__ PFNGLVIEWPORTINDEXEDFVPROC ;
typedef  scalar_t__ PFNGLVIEWPORTINDEXEDFPROC ;
typedef  scalar_t__ PFNGLVIEWPORTARRAYVPROC ;
typedef  scalar_t__ PFNGLSCISSORINDEXEDVPROC ;
typedef  scalar_t__ PFNGLSCISSORINDEXEDPROC ;
typedef  scalar_t__ PFNGLSCISSORARRAYVPROC ;
typedef  scalar_t__ PFNGLGETFLOATI_VPROC ;
typedef  scalar_t__ PFNGLGETDOUBLEI_VPROC ;
typedef  scalar_t__ PFNGLDEPTHRANGEINDEXEDPROC ;
typedef  scalar_t__ PFNGLDEPTHRANGEARRAYVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glDepthRangeArrayv ; 
 scalar_t__ _funcptr_glDepthRangeIndexed ; 
 scalar_t__ _funcptr_glGetDoublei_v ; 
 scalar_t__ _funcptr_glGetFloati_v ; 
 scalar_t__ _funcptr_glScissorArrayv ; 
 scalar_t__ _funcptr_glScissorIndexed ; 
 scalar_t__ _funcptr_glScissorIndexedv ; 
 scalar_t__ _funcptr_glViewportArrayv ; 
 scalar_t__ _funcptr_glViewportIndexedf ; 
 scalar_t__ _funcptr_glViewportIndexedfv ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glDepthRangeArrayv = (PFNGLDEPTHRANGEARRAYVPROC)FUNC0("glDepthRangeArrayv");
	if(!_funcptr_glDepthRangeArrayv) ++numFailed;
	_funcptr_glDepthRangeIndexed = (PFNGLDEPTHRANGEINDEXEDPROC)FUNC0("glDepthRangeIndexed");
	if(!_funcptr_glDepthRangeIndexed) ++numFailed;
	_funcptr_glGetDoublei_v = (PFNGLGETDOUBLEI_VPROC)FUNC0("glGetDoublei_v");
	if(!_funcptr_glGetDoublei_v) ++numFailed;
	_funcptr_glGetFloati_v = (PFNGLGETFLOATI_VPROC)FUNC0("glGetFloati_v");
	if(!_funcptr_glGetFloati_v) ++numFailed;
	_funcptr_glScissorArrayv = (PFNGLSCISSORARRAYVPROC)FUNC0("glScissorArrayv");
	if(!_funcptr_glScissorArrayv) ++numFailed;
	_funcptr_glScissorIndexed = (PFNGLSCISSORINDEXEDPROC)FUNC0("glScissorIndexed");
	if(!_funcptr_glScissorIndexed) ++numFailed;
	_funcptr_glScissorIndexedv = (PFNGLSCISSORINDEXEDVPROC)FUNC0("glScissorIndexedv");
	if(!_funcptr_glScissorIndexedv) ++numFailed;
	_funcptr_glViewportArrayv = (PFNGLVIEWPORTARRAYVPROC)FUNC0("glViewportArrayv");
	if(!_funcptr_glViewportArrayv) ++numFailed;
	_funcptr_glViewportIndexedf = (PFNGLVIEWPORTINDEXEDFPROC)FUNC0("glViewportIndexedf");
	if(!_funcptr_glViewportIndexedf) ++numFailed;
	_funcptr_glViewportIndexedfv = (PFNGLVIEWPORTINDEXEDFVPROC)FUNC0("glViewportIndexedfv");
	if(!_funcptr_glViewportIndexedfv) ++numFailed;
	return numFailed;
}