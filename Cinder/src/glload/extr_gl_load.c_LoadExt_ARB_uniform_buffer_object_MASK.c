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
typedef  scalar_t__ PFNGLUNIFORMBLOCKBINDINGPROC ;
typedef  scalar_t__ PFNGLGETUNIFORMINDICESPROC ;
typedef  scalar_t__ PFNGLGETUNIFORMBLOCKINDEXPROC ;
typedef  scalar_t__ PFNGLGETACTIVEUNIFORMSIVPROC ;
typedef  scalar_t__ PFNGLGETACTIVEUNIFORMNAMEPROC ;
typedef  scalar_t__ PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC ;
typedef  scalar_t__ PFNGLGETACTIVEUNIFORMBLOCKIVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetActiveUniformBlockName ; 
 scalar_t__ _funcptr_glGetActiveUniformBlockiv ; 
 scalar_t__ _funcptr_glGetActiveUniformName ; 
 scalar_t__ _funcptr_glGetActiveUniformsiv ; 
 scalar_t__ _funcptr_glGetUniformBlockIndex ; 
 scalar_t__ _funcptr_glGetUniformIndices ; 
 scalar_t__ _funcptr_glUniformBlockBinding ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetActiveUniformBlockName = (PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC)FUNC0("glGetActiveUniformBlockName");
	if(!_funcptr_glGetActiveUniformBlockName) ++numFailed;
	_funcptr_glGetActiveUniformBlockiv = (PFNGLGETACTIVEUNIFORMBLOCKIVPROC)FUNC0("glGetActiveUniformBlockiv");
	if(!_funcptr_glGetActiveUniformBlockiv) ++numFailed;
	_funcptr_glGetActiveUniformName = (PFNGLGETACTIVEUNIFORMNAMEPROC)FUNC0("glGetActiveUniformName");
	if(!_funcptr_glGetActiveUniformName) ++numFailed;
	_funcptr_glGetActiveUniformsiv = (PFNGLGETACTIVEUNIFORMSIVPROC)FUNC0("glGetActiveUniformsiv");
	if(!_funcptr_glGetActiveUniformsiv) ++numFailed;
	_funcptr_glGetUniformBlockIndex = (PFNGLGETUNIFORMBLOCKINDEXPROC)FUNC0("glGetUniformBlockIndex");
	if(!_funcptr_glGetUniformBlockIndex) ++numFailed;
	_funcptr_glGetUniformIndices = (PFNGLGETUNIFORMINDICESPROC)FUNC0("glGetUniformIndices");
	if(!_funcptr_glGetUniformIndices) ++numFailed;
	_funcptr_glUniformBlockBinding = (PFNGLUNIFORMBLOCKBINDINGPROC)FUNC0("glUniformBlockBinding");
	if(!_funcptr_glUniformBlockBinding) ++numFailed;
	return numFailed;
}