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
typedef  scalar_t__ PFNGLUNIFORMMATRIX4X3DVPROC ;
typedef  scalar_t__ PFNGLUNIFORMMATRIX4X2DVPROC ;
typedef  scalar_t__ PFNGLUNIFORMMATRIX4DVPROC ;
typedef  scalar_t__ PFNGLUNIFORMMATRIX3X4DVPROC ;
typedef  scalar_t__ PFNGLUNIFORMMATRIX3X2DVPROC ;
typedef  scalar_t__ PFNGLUNIFORMMATRIX3DVPROC ;
typedef  scalar_t__ PFNGLUNIFORMMATRIX2X4DVPROC ;
typedef  scalar_t__ PFNGLUNIFORMMATRIX2X3DVPROC ;
typedef  scalar_t__ PFNGLUNIFORMMATRIX2DVPROC ;
typedef  scalar_t__ PFNGLUNIFORM4DVPROC ;
typedef  scalar_t__ PFNGLUNIFORM4DPROC ;
typedef  scalar_t__ PFNGLUNIFORM3DVPROC ;
typedef  scalar_t__ PFNGLUNIFORM3DPROC ;
typedef  scalar_t__ PFNGLUNIFORM2DVPROC ;
typedef  scalar_t__ PFNGLUNIFORM2DPROC ;
typedef  scalar_t__ PFNGLUNIFORM1DVPROC ;
typedef  scalar_t__ PFNGLUNIFORM1DPROC ;
typedef  scalar_t__ PFNGLGETUNIFORMDVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetUniformdv ; 
 scalar_t__ _funcptr_glUniform1d ; 
 scalar_t__ _funcptr_glUniform1dv ; 
 scalar_t__ _funcptr_glUniform2d ; 
 scalar_t__ _funcptr_glUniform2dv ; 
 scalar_t__ _funcptr_glUniform3d ; 
 scalar_t__ _funcptr_glUniform3dv ; 
 scalar_t__ _funcptr_glUniform4d ; 
 scalar_t__ _funcptr_glUniform4dv ; 
 scalar_t__ _funcptr_glUniformMatrix2dv ; 
 scalar_t__ _funcptr_glUniformMatrix2x3dv ; 
 scalar_t__ _funcptr_glUniformMatrix2x4dv ; 
 scalar_t__ _funcptr_glUniformMatrix3dv ; 
 scalar_t__ _funcptr_glUniformMatrix3x2dv ; 
 scalar_t__ _funcptr_glUniformMatrix3x4dv ; 
 scalar_t__ _funcptr_glUniformMatrix4dv ; 
 scalar_t__ _funcptr_glUniformMatrix4x2dv ; 
 scalar_t__ _funcptr_glUniformMatrix4x3dv ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetUniformdv = (PFNGLGETUNIFORMDVPROC)FUNC0("glGetUniformdv");
	if(!_funcptr_glGetUniformdv) ++numFailed;
	_funcptr_glUniform1d = (PFNGLUNIFORM1DPROC)FUNC0("glUniform1d");
	if(!_funcptr_glUniform1d) ++numFailed;
	_funcptr_glUniform1dv = (PFNGLUNIFORM1DVPROC)FUNC0("glUniform1dv");
	if(!_funcptr_glUniform1dv) ++numFailed;
	_funcptr_glUniform2d = (PFNGLUNIFORM2DPROC)FUNC0("glUniform2d");
	if(!_funcptr_glUniform2d) ++numFailed;
	_funcptr_glUniform2dv = (PFNGLUNIFORM2DVPROC)FUNC0("glUniform2dv");
	if(!_funcptr_glUniform2dv) ++numFailed;
	_funcptr_glUniform3d = (PFNGLUNIFORM3DPROC)FUNC0("glUniform3d");
	if(!_funcptr_glUniform3d) ++numFailed;
	_funcptr_glUniform3dv = (PFNGLUNIFORM3DVPROC)FUNC0("glUniform3dv");
	if(!_funcptr_glUniform3dv) ++numFailed;
	_funcptr_glUniform4d = (PFNGLUNIFORM4DPROC)FUNC0("glUniform4d");
	if(!_funcptr_glUniform4d) ++numFailed;
	_funcptr_glUniform4dv = (PFNGLUNIFORM4DVPROC)FUNC0("glUniform4dv");
	if(!_funcptr_glUniform4dv) ++numFailed;
	_funcptr_glUniformMatrix2dv = (PFNGLUNIFORMMATRIX2DVPROC)FUNC0("glUniformMatrix2dv");
	if(!_funcptr_glUniformMatrix2dv) ++numFailed;
	_funcptr_glUniformMatrix2x3dv = (PFNGLUNIFORMMATRIX2X3DVPROC)FUNC0("glUniformMatrix2x3dv");
	if(!_funcptr_glUniformMatrix2x3dv) ++numFailed;
	_funcptr_glUniformMatrix2x4dv = (PFNGLUNIFORMMATRIX2X4DVPROC)FUNC0("glUniformMatrix2x4dv");
	if(!_funcptr_glUniformMatrix2x4dv) ++numFailed;
	_funcptr_glUniformMatrix3dv = (PFNGLUNIFORMMATRIX3DVPROC)FUNC0("glUniformMatrix3dv");
	if(!_funcptr_glUniformMatrix3dv) ++numFailed;
	_funcptr_glUniformMatrix3x2dv = (PFNGLUNIFORMMATRIX3X2DVPROC)FUNC0("glUniformMatrix3x2dv");
	if(!_funcptr_glUniformMatrix3x2dv) ++numFailed;
	_funcptr_glUniformMatrix3x4dv = (PFNGLUNIFORMMATRIX3X4DVPROC)FUNC0("glUniformMatrix3x4dv");
	if(!_funcptr_glUniformMatrix3x4dv) ++numFailed;
	_funcptr_glUniformMatrix4dv = (PFNGLUNIFORMMATRIX4DVPROC)FUNC0("glUniformMatrix4dv");
	if(!_funcptr_glUniformMatrix4dv) ++numFailed;
	_funcptr_glUniformMatrix4x2dv = (PFNGLUNIFORMMATRIX4X2DVPROC)FUNC0("glUniformMatrix4x2dv");
	if(!_funcptr_glUniformMatrix4x2dv) ++numFailed;
	_funcptr_glUniformMatrix4x3dv = (PFNGLUNIFORMMATRIX4X3DVPROC)FUNC0("glUniformMatrix4x3dv");
	if(!_funcptr_glUniformMatrix4x3dv) ++numFailed;
	return numFailed;
}