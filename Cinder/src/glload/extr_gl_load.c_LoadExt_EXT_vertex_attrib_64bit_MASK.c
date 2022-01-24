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
typedef  scalar_t__ PFNGLVERTEXATTRIBLPOINTEREXTPROC ;
typedef  scalar_t__ PFNGLVERTEXATTRIBL4DVEXTPROC ;
typedef  scalar_t__ PFNGLVERTEXATTRIBL4DEXTPROC ;
typedef  scalar_t__ PFNGLVERTEXATTRIBL3DVEXTPROC ;
typedef  scalar_t__ PFNGLVERTEXATTRIBL3DEXTPROC ;
typedef  scalar_t__ PFNGLVERTEXATTRIBL2DVEXTPROC ;
typedef  scalar_t__ PFNGLVERTEXATTRIBL2DEXTPROC ;
typedef  scalar_t__ PFNGLVERTEXATTRIBL1DVEXTPROC ;
typedef  scalar_t__ PFNGLVERTEXATTRIBL1DEXTPROC ;
typedef  scalar_t__ PFNGLGETVERTEXATTRIBLDVEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetVertexAttribLdvEXT ; 
 scalar_t__ _funcptr_glVertexAttribL1dEXT ; 
 scalar_t__ _funcptr_glVertexAttribL1dvEXT ; 
 scalar_t__ _funcptr_glVertexAttribL2dEXT ; 
 scalar_t__ _funcptr_glVertexAttribL2dvEXT ; 
 scalar_t__ _funcptr_glVertexAttribL3dEXT ; 
 scalar_t__ _funcptr_glVertexAttribL3dvEXT ; 
 scalar_t__ _funcptr_glVertexAttribL4dEXT ; 
 scalar_t__ _funcptr_glVertexAttribL4dvEXT ; 
 scalar_t__ _funcptr_glVertexAttribLPointerEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetVertexAttribLdvEXT = (PFNGLGETVERTEXATTRIBLDVEXTPROC)FUNC0("glGetVertexAttribLdvEXT");
	if(!_funcptr_glGetVertexAttribLdvEXT) ++numFailed;
	_funcptr_glVertexAttribL1dEXT = (PFNGLVERTEXATTRIBL1DEXTPROC)FUNC0("glVertexAttribL1dEXT");
	if(!_funcptr_glVertexAttribL1dEXT) ++numFailed;
	_funcptr_glVertexAttribL1dvEXT = (PFNGLVERTEXATTRIBL1DVEXTPROC)FUNC0("glVertexAttribL1dvEXT");
	if(!_funcptr_glVertexAttribL1dvEXT) ++numFailed;
	_funcptr_glVertexAttribL2dEXT = (PFNGLVERTEXATTRIBL2DEXTPROC)FUNC0("glVertexAttribL2dEXT");
	if(!_funcptr_glVertexAttribL2dEXT) ++numFailed;
	_funcptr_glVertexAttribL2dvEXT = (PFNGLVERTEXATTRIBL2DVEXTPROC)FUNC0("glVertexAttribL2dvEXT");
	if(!_funcptr_glVertexAttribL2dvEXT) ++numFailed;
	_funcptr_glVertexAttribL3dEXT = (PFNGLVERTEXATTRIBL3DEXTPROC)FUNC0("glVertexAttribL3dEXT");
	if(!_funcptr_glVertexAttribL3dEXT) ++numFailed;
	_funcptr_glVertexAttribL3dvEXT = (PFNGLVERTEXATTRIBL3DVEXTPROC)FUNC0("glVertexAttribL3dvEXT");
	if(!_funcptr_glVertexAttribL3dvEXT) ++numFailed;
	_funcptr_glVertexAttribL4dEXT = (PFNGLVERTEXATTRIBL4DEXTPROC)FUNC0("glVertexAttribL4dEXT");
	if(!_funcptr_glVertexAttribL4dEXT) ++numFailed;
	_funcptr_glVertexAttribL4dvEXT = (PFNGLVERTEXATTRIBL4DVEXTPROC)FUNC0("glVertexAttribL4dvEXT");
	if(!_funcptr_glVertexAttribL4dvEXT) ++numFailed;
	_funcptr_glVertexAttribLPointerEXT = (PFNGLVERTEXATTRIBLPOINTEREXTPROC)FUNC0("glVertexAttribLPointerEXT");
	if(!_funcptr_glVertexAttribLPointerEXT) ++numFailed;
	return numFailed;
}