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
typedef  scalar_t__ PFNGLTRANSFORMFEEDBACKVARYINGSNVPROC ;
typedef  scalar_t__ PFNGLTRANSFORMFEEDBACKSTREAMATTRIBSNVPROC ;
typedef  scalar_t__ PFNGLTRANSFORMFEEDBACKATTRIBSNVPROC ;
typedef  scalar_t__ PFNGLGETVARYINGLOCATIONNVPROC ;
typedef  scalar_t__ PFNGLGETTRANSFORMFEEDBACKVARYINGNVPROC ;
typedef  scalar_t__ PFNGLGETACTIVEVARYINGNVPROC ;
typedef  scalar_t__ PFNGLENDTRANSFORMFEEDBACKNVPROC ;
typedef  scalar_t__ PFNGLBINDBUFFERRANGENVPROC ;
typedef  scalar_t__ PFNGLBINDBUFFEROFFSETNVPROC ;
typedef  scalar_t__ PFNGLBINDBUFFERBASENVPROC ;
typedef  scalar_t__ PFNGLBEGINTRANSFORMFEEDBACKNVPROC ;
typedef  scalar_t__ PFNGLACTIVEVARYINGNVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glActiveVaryingNV ; 
 scalar_t__ _funcptr_glBeginTransformFeedbackNV ; 
 scalar_t__ _funcptr_glBindBufferBaseNV ; 
 scalar_t__ _funcptr_glBindBufferOffsetNV ; 
 scalar_t__ _funcptr_glBindBufferRangeNV ; 
 scalar_t__ _funcptr_glEndTransformFeedbackNV ; 
 scalar_t__ _funcptr_glGetActiveVaryingNV ; 
 scalar_t__ _funcptr_glGetTransformFeedbackVaryingNV ; 
 scalar_t__ _funcptr_glGetVaryingLocationNV ; 
 scalar_t__ _funcptr_glTransformFeedbackAttribsNV ; 
 scalar_t__ _funcptr_glTransformFeedbackStreamAttribsNV ; 
 scalar_t__ _funcptr_glTransformFeedbackVaryingsNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glActiveVaryingNV = (PFNGLACTIVEVARYINGNVPROC)FUNC0("glActiveVaryingNV");
	if(!_funcptr_glActiveVaryingNV) ++numFailed;
	_funcptr_glBeginTransformFeedbackNV = (PFNGLBEGINTRANSFORMFEEDBACKNVPROC)FUNC0("glBeginTransformFeedbackNV");
	if(!_funcptr_glBeginTransformFeedbackNV) ++numFailed;
	_funcptr_glBindBufferBaseNV = (PFNGLBINDBUFFERBASENVPROC)FUNC0("glBindBufferBaseNV");
	if(!_funcptr_glBindBufferBaseNV) ++numFailed;
	_funcptr_glBindBufferOffsetNV = (PFNGLBINDBUFFEROFFSETNVPROC)FUNC0("glBindBufferOffsetNV");
	if(!_funcptr_glBindBufferOffsetNV) ++numFailed;
	_funcptr_glBindBufferRangeNV = (PFNGLBINDBUFFERRANGENVPROC)FUNC0("glBindBufferRangeNV");
	if(!_funcptr_glBindBufferRangeNV) ++numFailed;
	_funcptr_glEndTransformFeedbackNV = (PFNGLENDTRANSFORMFEEDBACKNVPROC)FUNC0("glEndTransformFeedbackNV");
	if(!_funcptr_glEndTransformFeedbackNV) ++numFailed;
	_funcptr_glGetActiveVaryingNV = (PFNGLGETACTIVEVARYINGNVPROC)FUNC0("glGetActiveVaryingNV");
	if(!_funcptr_glGetActiveVaryingNV) ++numFailed;
	_funcptr_glGetTransformFeedbackVaryingNV = (PFNGLGETTRANSFORMFEEDBACKVARYINGNVPROC)FUNC0("glGetTransformFeedbackVaryingNV");
	if(!_funcptr_glGetTransformFeedbackVaryingNV) ++numFailed;
	_funcptr_glGetVaryingLocationNV = (PFNGLGETVARYINGLOCATIONNVPROC)FUNC0("glGetVaryingLocationNV");
	if(!_funcptr_glGetVaryingLocationNV) ++numFailed;
	_funcptr_glTransformFeedbackAttribsNV = (PFNGLTRANSFORMFEEDBACKATTRIBSNVPROC)FUNC0("glTransformFeedbackAttribsNV");
	if(!_funcptr_glTransformFeedbackAttribsNV) ++numFailed;
	_funcptr_glTransformFeedbackStreamAttribsNV = (PFNGLTRANSFORMFEEDBACKSTREAMATTRIBSNVPROC)FUNC0("glTransformFeedbackStreamAttribsNV");
	if(!_funcptr_glTransformFeedbackStreamAttribsNV) ++numFailed;
	_funcptr_glTransformFeedbackVaryingsNV = (PFNGLTRANSFORMFEEDBACKVARYINGSNVPROC)FUNC0("glTransformFeedbackVaryingsNV");
	if(!_funcptr_glTransformFeedbackVaryingsNV) ++numFailed;
	return numFailed;
}