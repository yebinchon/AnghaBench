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
typedef  scalar_t__ PFNGLUNIFORM4UI64VNVPROC ;
typedef  scalar_t__ PFNGLUNIFORM4UI64NVPROC ;
typedef  scalar_t__ PFNGLUNIFORM4I64VNVPROC ;
typedef  scalar_t__ PFNGLUNIFORM4I64NVPROC ;
typedef  scalar_t__ PFNGLUNIFORM3UI64VNVPROC ;
typedef  scalar_t__ PFNGLUNIFORM3UI64NVPROC ;
typedef  scalar_t__ PFNGLUNIFORM3I64VNVPROC ;
typedef  scalar_t__ PFNGLUNIFORM3I64NVPROC ;
typedef  scalar_t__ PFNGLUNIFORM2UI64VNVPROC ;
typedef  scalar_t__ PFNGLUNIFORM2UI64NVPROC ;
typedef  scalar_t__ PFNGLUNIFORM2I64VNVPROC ;
typedef  scalar_t__ PFNGLUNIFORM2I64NVPROC ;
typedef  scalar_t__ PFNGLUNIFORM1UI64VNVPROC ;
typedef  scalar_t__ PFNGLUNIFORM1UI64NVPROC ;
typedef  scalar_t__ PFNGLUNIFORM1I64VNVPROC ;
typedef  scalar_t__ PFNGLUNIFORM1I64NVPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORM4UI64VNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORM4UI64NVPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORM4I64VNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORM4I64NVPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORM3UI64VNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORM3UI64NVPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORM3I64VNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORM3I64NVPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORM2UI64VNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORM2UI64NVPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORM2I64VNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORM2I64NVPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORM1UI64VNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORM1UI64NVPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORM1I64VNVPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORM1I64NVPROC ;
typedef  scalar_t__ PFNGLGETUNIFORMI64VNVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetUniformi64vNV ; 
 scalar_t__ _funcptr_glProgramUniform1i64NV ; 
 scalar_t__ _funcptr_glProgramUniform1i64vNV ; 
 scalar_t__ _funcptr_glProgramUniform1ui64NV ; 
 scalar_t__ _funcptr_glProgramUniform1ui64vNV ; 
 scalar_t__ _funcptr_glProgramUniform2i64NV ; 
 scalar_t__ _funcptr_glProgramUniform2i64vNV ; 
 scalar_t__ _funcptr_glProgramUniform2ui64NV ; 
 scalar_t__ _funcptr_glProgramUniform2ui64vNV ; 
 scalar_t__ _funcptr_glProgramUniform3i64NV ; 
 scalar_t__ _funcptr_glProgramUniform3i64vNV ; 
 scalar_t__ _funcptr_glProgramUniform3ui64NV ; 
 scalar_t__ _funcptr_glProgramUniform3ui64vNV ; 
 scalar_t__ _funcptr_glProgramUniform4i64NV ; 
 scalar_t__ _funcptr_glProgramUniform4i64vNV ; 
 scalar_t__ _funcptr_glProgramUniform4ui64NV ; 
 scalar_t__ _funcptr_glProgramUniform4ui64vNV ; 
 scalar_t__ _funcptr_glUniform1i64NV ; 
 scalar_t__ _funcptr_glUniform1i64vNV ; 
 scalar_t__ _funcptr_glUniform1ui64NV ; 
 scalar_t__ _funcptr_glUniform1ui64vNV ; 
 scalar_t__ _funcptr_glUniform2i64NV ; 
 scalar_t__ _funcptr_glUniform2i64vNV ; 
 scalar_t__ _funcptr_glUniform2ui64NV ; 
 scalar_t__ _funcptr_glUniform2ui64vNV ; 
 scalar_t__ _funcptr_glUniform3i64NV ; 
 scalar_t__ _funcptr_glUniform3i64vNV ; 
 scalar_t__ _funcptr_glUniform3ui64NV ; 
 scalar_t__ _funcptr_glUniform3ui64vNV ; 
 scalar_t__ _funcptr_glUniform4i64NV ; 
 scalar_t__ _funcptr_glUniform4i64vNV ; 
 scalar_t__ _funcptr_glUniform4ui64NV ; 
 scalar_t__ _funcptr_glUniform4ui64vNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetUniformi64vNV = (PFNGLGETUNIFORMI64VNVPROC)FUNC0("glGetUniformi64vNV");
	if(!_funcptr_glGetUniformi64vNV) ++numFailed;
	_funcptr_glProgramUniform1i64NV = (PFNGLPROGRAMUNIFORM1I64NVPROC)FUNC0("glProgramUniform1i64NV");
	if(!_funcptr_glProgramUniform1i64NV) ++numFailed;
	_funcptr_glProgramUniform1i64vNV = (PFNGLPROGRAMUNIFORM1I64VNVPROC)FUNC0("glProgramUniform1i64vNV");
	if(!_funcptr_glProgramUniform1i64vNV) ++numFailed;
	_funcptr_glProgramUniform1ui64NV = (PFNGLPROGRAMUNIFORM1UI64NVPROC)FUNC0("glProgramUniform1ui64NV");
	if(!_funcptr_glProgramUniform1ui64NV) ++numFailed;
	_funcptr_glProgramUniform1ui64vNV = (PFNGLPROGRAMUNIFORM1UI64VNVPROC)FUNC0("glProgramUniform1ui64vNV");
	if(!_funcptr_glProgramUniform1ui64vNV) ++numFailed;
	_funcptr_glProgramUniform2i64NV = (PFNGLPROGRAMUNIFORM2I64NVPROC)FUNC0("glProgramUniform2i64NV");
	if(!_funcptr_glProgramUniform2i64NV) ++numFailed;
	_funcptr_glProgramUniform2i64vNV = (PFNGLPROGRAMUNIFORM2I64VNVPROC)FUNC0("glProgramUniform2i64vNV");
	if(!_funcptr_glProgramUniform2i64vNV) ++numFailed;
	_funcptr_glProgramUniform2ui64NV = (PFNGLPROGRAMUNIFORM2UI64NVPROC)FUNC0("glProgramUniform2ui64NV");
	if(!_funcptr_glProgramUniform2ui64NV) ++numFailed;
	_funcptr_glProgramUniform2ui64vNV = (PFNGLPROGRAMUNIFORM2UI64VNVPROC)FUNC0("glProgramUniform2ui64vNV");
	if(!_funcptr_glProgramUniform2ui64vNV) ++numFailed;
	_funcptr_glProgramUniform3i64NV = (PFNGLPROGRAMUNIFORM3I64NVPROC)FUNC0("glProgramUniform3i64NV");
	if(!_funcptr_glProgramUniform3i64NV) ++numFailed;
	_funcptr_glProgramUniform3i64vNV = (PFNGLPROGRAMUNIFORM3I64VNVPROC)FUNC0("glProgramUniform3i64vNV");
	if(!_funcptr_glProgramUniform3i64vNV) ++numFailed;
	_funcptr_glProgramUniform3ui64NV = (PFNGLPROGRAMUNIFORM3UI64NVPROC)FUNC0("glProgramUniform3ui64NV");
	if(!_funcptr_glProgramUniform3ui64NV) ++numFailed;
	_funcptr_glProgramUniform3ui64vNV = (PFNGLPROGRAMUNIFORM3UI64VNVPROC)FUNC0("glProgramUniform3ui64vNV");
	if(!_funcptr_glProgramUniform3ui64vNV) ++numFailed;
	_funcptr_glProgramUniform4i64NV = (PFNGLPROGRAMUNIFORM4I64NVPROC)FUNC0("glProgramUniform4i64NV");
	if(!_funcptr_glProgramUniform4i64NV) ++numFailed;
	_funcptr_glProgramUniform4i64vNV = (PFNGLPROGRAMUNIFORM4I64VNVPROC)FUNC0("glProgramUniform4i64vNV");
	if(!_funcptr_glProgramUniform4i64vNV) ++numFailed;
	_funcptr_glProgramUniform4ui64NV = (PFNGLPROGRAMUNIFORM4UI64NVPROC)FUNC0("glProgramUniform4ui64NV");
	if(!_funcptr_glProgramUniform4ui64NV) ++numFailed;
	_funcptr_glProgramUniform4ui64vNV = (PFNGLPROGRAMUNIFORM4UI64VNVPROC)FUNC0("glProgramUniform4ui64vNV");
	if(!_funcptr_glProgramUniform4ui64vNV) ++numFailed;
	_funcptr_glUniform1i64NV = (PFNGLUNIFORM1I64NVPROC)FUNC0("glUniform1i64NV");
	if(!_funcptr_glUniform1i64NV) ++numFailed;
	_funcptr_glUniform1i64vNV = (PFNGLUNIFORM1I64VNVPROC)FUNC0("glUniform1i64vNV");
	if(!_funcptr_glUniform1i64vNV) ++numFailed;
	_funcptr_glUniform1ui64NV = (PFNGLUNIFORM1UI64NVPROC)FUNC0("glUniform1ui64NV");
	if(!_funcptr_glUniform1ui64NV) ++numFailed;
	_funcptr_glUniform1ui64vNV = (PFNGLUNIFORM1UI64VNVPROC)FUNC0("glUniform1ui64vNV");
	if(!_funcptr_glUniform1ui64vNV) ++numFailed;
	_funcptr_glUniform2i64NV = (PFNGLUNIFORM2I64NVPROC)FUNC0("glUniform2i64NV");
	if(!_funcptr_glUniform2i64NV) ++numFailed;
	_funcptr_glUniform2i64vNV = (PFNGLUNIFORM2I64VNVPROC)FUNC0("glUniform2i64vNV");
	if(!_funcptr_glUniform2i64vNV) ++numFailed;
	_funcptr_glUniform2ui64NV = (PFNGLUNIFORM2UI64NVPROC)FUNC0("glUniform2ui64NV");
	if(!_funcptr_glUniform2ui64NV) ++numFailed;
	_funcptr_glUniform2ui64vNV = (PFNGLUNIFORM2UI64VNVPROC)FUNC0("glUniform2ui64vNV");
	if(!_funcptr_glUniform2ui64vNV) ++numFailed;
	_funcptr_glUniform3i64NV = (PFNGLUNIFORM3I64NVPROC)FUNC0("glUniform3i64NV");
	if(!_funcptr_glUniform3i64NV) ++numFailed;
	_funcptr_glUniform3i64vNV = (PFNGLUNIFORM3I64VNVPROC)FUNC0("glUniform3i64vNV");
	if(!_funcptr_glUniform3i64vNV) ++numFailed;
	_funcptr_glUniform3ui64NV = (PFNGLUNIFORM3UI64NVPROC)FUNC0("glUniform3ui64NV");
	if(!_funcptr_glUniform3ui64NV) ++numFailed;
	_funcptr_glUniform3ui64vNV = (PFNGLUNIFORM3UI64VNVPROC)FUNC0("glUniform3ui64vNV");
	if(!_funcptr_glUniform3ui64vNV) ++numFailed;
	_funcptr_glUniform4i64NV = (PFNGLUNIFORM4I64NVPROC)FUNC0("glUniform4i64NV");
	if(!_funcptr_glUniform4i64NV) ++numFailed;
	_funcptr_glUniform4i64vNV = (PFNGLUNIFORM4I64VNVPROC)FUNC0("glUniform4i64vNV");
	if(!_funcptr_glUniform4i64vNV) ++numFailed;
	_funcptr_glUniform4ui64NV = (PFNGLUNIFORM4UI64NVPROC)FUNC0("glUniform4ui64NV");
	if(!_funcptr_glUniform4ui64NV) ++numFailed;
	_funcptr_glUniform4ui64vNV = (PFNGLUNIFORM4UI64VNVPROC)FUNC0("glUniform4ui64vNV");
	if(!_funcptr_glUniform4ui64vNV) ++numFailed;
	return numFailed;
}