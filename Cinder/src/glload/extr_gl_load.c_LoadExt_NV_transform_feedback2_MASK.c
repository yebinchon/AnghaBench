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
typedef  scalar_t__ PFNGLRESUMETRANSFORMFEEDBACKNVPROC ;
typedef  scalar_t__ PFNGLPAUSETRANSFORMFEEDBACKNVPROC ;
typedef  scalar_t__ PFNGLISTRANSFORMFEEDBACKNVPROC ;
typedef  scalar_t__ PFNGLGENTRANSFORMFEEDBACKSNVPROC ;
typedef  scalar_t__ PFNGLDRAWTRANSFORMFEEDBACKNVPROC ;
typedef  scalar_t__ PFNGLDELETETRANSFORMFEEDBACKSNVPROC ;
typedef  scalar_t__ PFNGLBINDTRANSFORMFEEDBACKNVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBindTransformFeedbackNV ; 
 scalar_t__ _funcptr_glDeleteTransformFeedbacksNV ; 
 scalar_t__ _funcptr_glDrawTransformFeedbackNV ; 
 scalar_t__ _funcptr_glGenTransformFeedbacksNV ; 
 scalar_t__ _funcptr_glIsTransformFeedbackNV ; 
 scalar_t__ _funcptr_glPauseTransformFeedbackNV ; 
 scalar_t__ _funcptr_glResumeTransformFeedbackNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBindTransformFeedbackNV = (PFNGLBINDTRANSFORMFEEDBACKNVPROC)FUNC0("glBindTransformFeedbackNV");
	if(!_funcptr_glBindTransformFeedbackNV) ++numFailed;
	_funcptr_glDeleteTransformFeedbacksNV = (PFNGLDELETETRANSFORMFEEDBACKSNVPROC)FUNC0("glDeleteTransformFeedbacksNV");
	if(!_funcptr_glDeleteTransformFeedbacksNV) ++numFailed;
	_funcptr_glDrawTransformFeedbackNV = (PFNGLDRAWTRANSFORMFEEDBACKNVPROC)FUNC0("glDrawTransformFeedbackNV");
	if(!_funcptr_glDrawTransformFeedbackNV) ++numFailed;
	_funcptr_glGenTransformFeedbacksNV = (PFNGLGENTRANSFORMFEEDBACKSNVPROC)FUNC0("glGenTransformFeedbacksNV");
	if(!_funcptr_glGenTransformFeedbacksNV) ++numFailed;
	_funcptr_glIsTransformFeedbackNV = (PFNGLISTRANSFORMFEEDBACKNVPROC)FUNC0("glIsTransformFeedbackNV");
	if(!_funcptr_glIsTransformFeedbackNV) ++numFailed;
	_funcptr_glPauseTransformFeedbackNV = (PFNGLPAUSETRANSFORMFEEDBACKNVPROC)FUNC0("glPauseTransformFeedbackNV");
	if(!_funcptr_glPauseTransformFeedbackNV) ++numFailed;
	_funcptr_glResumeTransformFeedbackNV = (PFNGLRESUMETRANSFORMFEEDBACKNVPROC)FUNC0("glResumeTransformFeedbackNV");
	if(!_funcptr_glResumeTransformFeedbackNV) ++numFailed;
	return numFailed;
}