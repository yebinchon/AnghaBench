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
typedef  scalar_t__ PFNGLUNIFORMUI64VNVPROC ;
typedef  scalar_t__ PFNGLUNIFORMUI64NVPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORMUI64VNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORMUI64NVPROC ;
typedef  scalar_t__ PFNGLMAKENAMEDBUFFERRESIDENTNVPROC ;
typedef  scalar_t__ PFNGLMAKENAMEDBUFFERNONRESIDENTNVPROC ;
typedef  scalar_t__ PFNGLMAKEBUFFERRESIDENTNVPROC ;
typedef  scalar_t__ PFNGLMAKEBUFFERNONRESIDENTNVPROC ;
typedef  scalar_t__ PFNGLISNAMEDBUFFERRESIDENTNVPROC ;
typedef  scalar_t__ PFNGLISBUFFERRESIDENTNVPROC ;
typedef  scalar_t__ PFNGLGETUNIFORMUI64VNVPROC ;
typedef  scalar_t__ PFNGLGETNAMEDBUFFERPARAMETERUI64VNVPROC ;
typedef  scalar_t__ PFNGLGETINTEGERUI64VNVPROC ;
typedef  scalar_t__ PFNGLGETBUFFERPARAMETERUI64VNVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetBufferParameterui64vNV ; 
 scalar_t__ _funcptr_glGetIntegerui64vNV ; 
 scalar_t__ _funcptr_glGetNamedBufferParameterui64vNV ; 
 scalar_t__ _funcptr_glGetUniformui64vNV ; 
 scalar_t__ _funcptr_glIsBufferResidentNV ; 
 scalar_t__ _funcptr_glIsNamedBufferResidentNV ; 
 scalar_t__ _funcptr_glMakeBufferNonResidentNV ; 
 scalar_t__ _funcptr_glMakeBufferResidentNV ; 
 scalar_t__ _funcptr_glMakeNamedBufferNonResidentNV ; 
 scalar_t__ _funcptr_glMakeNamedBufferResidentNV ; 
 scalar_t__ _funcptr_glProgramUniformui64NV ; 
 scalar_t__ _funcptr_glProgramUniformui64vNV ; 
 scalar_t__ _funcptr_glUniformui64NV ; 
 scalar_t__ _funcptr_glUniformui64vNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetBufferParameterui64vNV = (PFNGLGETBUFFERPARAMETERUI64VNVPROC)FUNC0("glGetBufferParameterui64vNV");
	if(!_funcptr_glGetBufferParameterui64vNV) ++numFailed;
	_funcptr_glGetIntegerui64vNV = (PFNGLGETINTEGERUI64VNVPROC)FUNC0("glGetIntegerui64vNV");
	if(!_funcptr_glGetIntegerui64vNV) ++numFailed;
	_funcptr_glGetNamedBufferParameterui64vNV = (PFNGLGETNAMEDBUFFERPARAMETERUI64VNVPROC)FUNC0("glGetNamedBufferParameterui64vNV");
	if(!_funcptr_glGetNamedBufferParameterui64vNV) ++numFailed;
	_funcptr_glGetUniformui64vNV = (PFNGLGETUNIFORMUI64VNVPROC)FUNC0("glGetUniformui64vNV");
	if(!_funcptr_glGetUniformui64vNV) ++numFailed;
	_funcptr_glIsBufferResidentNV = (PFNGLISBUFFERRESIDENTNVPROC)FUNC0("glIsBufferResidentNV");
	if(!_funcptr_glIsBufferResidentNV) ++numFailed;
	_funcptr_glIsNamedBufferResidentNV = (PFNGLISNAMEDBUFFERRESIDENTNVPROC)FUNC0("glIsNamedBufferResidentNV");
	if(!_funcptr_glIsNamedBufferResidentNV) ++numFailed;
	_funcptr_glMakeBufferNonResidentNV = (PFNGLMAKEBUFFERNONRESIDENTNVPROC)FUNC0("glMakeBufferNonResidentNV");
	if(!_funcptr_glMakeBufferNonResidentNV) ++numFailed;
	_funcptr_glMakeBufferResidentNV = (PFNGLMAKEBUFFERRESIDENTNVPROC)FUNC0("glMakeBufferResidentNV");
	if(!_funcptr_glMakeBufferResidentNV) ++numFailed;
	_funcptr_glMakeNamedBufferNonResidentNV = (PFNGLMAKENAMEDBUFFERNONRESIDENTNVPROC)FUNC0("glMakeNamedBufferNonResidentNV");
	if(!_funcptr_glMakeNamedBufferNonResidentNV) ++numFailed;
	_funcptr_glMakeNamedBufferResidentNV = (PFNGLMAKENAMEDBUFFERRESIDENTNVPROC)FUNC0("glMakeNamedBufferResidentNV");
	if(!_funcptr_glMakeNamedBufferResidentNV) ++numFailed;
	_funcptr_glProgramUniformui64NV = (PFNGLPROGRAMUNIFORMUI64NVPROC)FUNC0("glProgramUniformui64NV");
	if(!_funcptr_glProgramUniformui64NV) ++numFailed;
	_funcptr_glProgramUniformui64vNV = (PFNGLPROGRAMUNIFORMUI64VNVPROC)FUNC0("glProgramUniformui64vNV");
	if(!_funcptr_glProgramUniformui64vNV) ++numFailed;
	_funcptr_glUniformui64NV = (PFNGLUNIFORMUI64NVPROC)FUNC0("glUniformui64NV");
	if(!_funcptr_glUniformui64NV) ++numFailed;
	_funcptr_glUniformui64vNV = (PFNGLUNIFORMUI64VNVPROC)FUNC0("glUniformui64vNV");
	if(!_funcptr_glUniformui64vNV) ++numFailed;
	return numFailed;
}