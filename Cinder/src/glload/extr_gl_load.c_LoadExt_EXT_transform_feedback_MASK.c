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
typedef  scalar_t__ PFNGLTRANSFORMFEEDBACKVARYINGSEXTPROC ;
typedef  scalar_t__ PFNGLGETTRANSFORMFEEDBACKVARYINGEXTPROC ;
typedef  scalar_t__ PFNGLENDTRANSFORMFEEDBACKEXTPROC ;
typedef  scalar_t__ PFNGLBINDBUFFERRANGEEXTPROC ;
typedef  scalar_t__ PFNGLBINDBUFFEROFFSETEXTPROC ;
typedef  scalar_t__ PFNGLBINDBUFFERBASEEXTPROC ;
typedef  scalar_t__ PFNGLBEGINTRANSFORMFEEDBACKEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBeginTransformFeedbackEXT ; 
 scalar_t__ _funcptr_glBindBufferBaseEXT ; 
 scalar_t__ _funcptr_glBindBufferOffsetEXT ; 
 scalar_t__ _funcptr_glBindBufferRangeEXT ; 
 scalar_t__ _funcptr_glEndTransformFeedbackEXT ; 
 scalar_t__ _funcptr_glGetTransformFeedbackVaryingEXT ; 
 scalar_t__ _funcptr_glTransformFeedbackVaryingsEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBeginTransformFeedbackEXT = (PFNGLBEGINTRANSFORMFEEDBACKEXTPROC)FUNC0("glBeginTransformFeedbackEXT");
	if(!_funcptr_glBeginTransformFeedbackEXT) ++numFailed;
	_funcptr_glBindBufferBaseEXT = (PFNGLBINDBUFFERBASEEXTPROC)FUNC0("glBindBufferBaseEXT");
	if(!_funcptr_glBindBufferBaseEXT) ++numFailed;
	_funcptr_glBindBufferOffsetEXT = (PFNGLBINDBUFFEROFFSETEXTPROC)FUNC0("glBindBufferOffsetEXT");
	if(!_funcptr_glBindBufferOffsetEXT) ++numFailed;
	_funcptr_glBindBufferRangeEXT = (PFNGLBINDBUFFERRANGEEXTPROC)FUNC0("glBindBufferRangeEXT");
	if(!_funcptr_glBindBufferRangeEXT) ++numFailed;
	_funcptr_glEndTransformFeedbackEXT = (PFNGLENDTRANSFORMFEEDBACKEXTPROC)FUNC0("glEndTransformFeedbackEXT");
	if(!_funcptr_glEndTransformFeedbackEXT) ++numFailed;
	_funcptr_glGetTransformFeedbackVaryingEXT = (PFNGLGETTRANSFORMFEEDBACKVARYINGEXTPROC)FUNC0("glGetTransformFeedbackVaryingEXT");
	if(!_funcptr_glGetTransformFeedbackVaryingEXT) ++numFailed;
	_funcptr_glTransformFeedbackVaryingsEXT = (PFNGLTRANSFORMFEEDBACKVARYINGSEXTPROC)FUNC0("glTransformFeedbackVaryingsEXT");
	if(!_funcptr_glTransformFeedbackVaryingsEXT) ++numFailed;
	return numFailed;
}