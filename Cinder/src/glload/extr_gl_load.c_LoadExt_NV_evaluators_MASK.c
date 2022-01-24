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
typedef  scalar_t__ PFNGLMAPPARAMETERIVNVPROC ;
typedef  scalar_t__ PFNGLMAPPARAMETERFVNVPROC ;
typedef  scalar_t__ PFNGLMAPCONTROLPOINTSNVPROC ;
typedef  scalar_t__ PFNGLGETMAPPARAMETERIVNVPROC ;
typedef  scalar_t__ PFNGLGETMAPPARAMETERFVNVPROC ;
typedef  scalar_t__ PFNGLGETMAPCONTROLPOINTSNVPROC ;
typedef  scalar_t__ PFNGLGETMAPATTRIBPARAMETERIVNVPROC ;
typedef  scalar_t__ PFNGLGETMAPATTRIBPARAMETERFVNVPROC ;
typedef  scalar_t__ PFNGLEVALMAPSNVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glEvalMapsNV ; 
 scalar_t__ _funcptr_glGetMapAttribParameterfvNV ; 
 scalar_t__ _funcptr_glGetMapAttribParameterivNV ; 
 scalar_t__ _funcptr_glGetMapControlPointsNV ; 
 scalar_t__ _funcptr_glGetMapParameterfvNV ; 
 scalar_t__ _funcptr_glGetMapParameterivNV ; 
 scalar_t__ _funcptr_glMapControlPointsNV ; 
 scalar_t__ _funcptr_glMapParameterfvNV ; 
 scalar_t__ _funcptr_glMapParameterivNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glEvalMapsNV = (PFNGLEVALMAPSNVPROC)FUNC0("glEvalMapsNV");
	if(!_funcptr_glEvalMapsNV) ++numFailed;
	_funcptr_glGetMapAttribParameterfvNV = (PFNGLGETMAPATTRIBPARAMETERFVNVPROC)FUNC0("glGetMapAttribParameterfvNV");
	if(!_funcptr_glGetMapAttribParameterfvNV) ++numFailed;
	_funcptr_glGetMapAttribParameterivNV = (PFNGLGETMAPATTRIBPARAMETERIVNVPROC)FUNC0("glGetMapAttribParameterivNV");
	if(!_funcptr_glGetMapAttribParameterivNV) ++numFailed;
	_funcptr_glGetMapControlPointsNV = (PFNGLGETMAPCONTROLPOINTSNVPROC)FUNC0("glGetMapControlPointsNV");
	if(!_funcptr_glGetMapControlPointsNV) ++numFailed;
	_funcptr_glGetMapParameterfvNV = (PFNGLGETMAPPARAMETERFVNVPROC)FUNC0("glGetMapParameterfvNV");
	if(!_funcptr_glGetMapParameterfvNV) ++numFailed;
	_funcptr_glGetMapParameterivNV = (PFNGLGETMAPPARAMETERIVNVPROC)FUNC0("glGetMapParameterivNV");
	if(!_funcptr_glGetMapParameterivNV) ++numFailed;
	_funcptr_glMapControlPointsNV = (PFNGLMAPCONTROLPOINTSNVPROC)FUNC0("glMapControlPointsNV");
	if(!_funcptr_glMapControlPointsNV) ++numFailed;
	_funcptr_glMapParameterfvNV = (PFNGLMAPPARAMETERFVNVPROC)FUNC0("glMapParameterfvNV");
	if(!_funcptr_glMapParameterfvNV) ++numFailed;
	_funcptr_glMapParameterivNV = (PFNGLMAPPARAMETERIVNVPROC)FUNC0("glMapParameterivNV");
	if(!_funcptr_glMapParameterivNV) ++numFailed;
	return numFailed;
}