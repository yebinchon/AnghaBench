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
typedef  scalar_t__ PFNGLVERTEXATTRIBL1UI64VARBPROC ;
typedef  scalar_t__ PFNGLVERTEXATTRIBL1UI64ARBPROC ;
typedef  scalar_t__ PFNGLUNIFORMHANDLEUI64VARBPROC ;
typedef  scalar_t__ PFNGLUNIFORMHANDLEUI64ARBPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORMHANDLEUI64VARBPROC ;
typedef  scalar_t__ PFNGLPROGRAMUNIFORMHANDLEUI64ARBPROC ;
typedef  scalar_t__ PFNGLMAKETEXTUREHANDLERESIDENTARBPROC ;
typedef  scalar_t__ PFNGLMAKETEXTUREHANDLENONRESIDENTARBPROC ;
typedef  scalar_t__ PFNGLMAKEIMAGEHANDLERESIDENTARBPROC ;
typedef  scalar_t__ PFNGLMAKEIMAGEHANDLENONRESIDENTARBPROC ;
typedef  scalar_t__ PFNGLISTEXTUREHANDLERESIDENTARBPROC ;
typedef  scalar_t__ PFNGLISIMAGEHANDLERESIDENTARBPROC ;
typedef  scalar_t__ PFNGLGETVERTEXATTRIBLUI64VARBPROC ;
typedef  scalar_t__ PFNGLGETTEXTURESAMPLERHANDLEARBPROC ;
typedef  scalar_t__ PFNGLGETTEXTUREHANDLEARBPROC ;
typedef  scalar_t__ PFNGLGETIMAGEHANDLEARBPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetImageHandleARB ; 
 scalar_t__ _funcptr_glGetTextureHandleARB ; 
 scalar_t__ _funcptr_glGetTextureSamplerHandleARB ; 
 scalar_t__ _funcptr_glGetVertexAttribLui64vARB ; 
 scalar_t__ _funcptr_glIsImageHandleResidentARB ; 
 scalar_t__ _funcptr_glIsTextureHandleResidentARB ; 
 scalar_t__ _funcptr_glMakeImageHandleNonResidentARB ; 
 scalar_t__ _funcptr_glMakeImageHandleResidentARB ; 
 scalar_t__ _funcptr_glMakeTextureHandleNonResidentARB ; 
 scalar_t__ _funcptr_glMakeTextureHandleResidentARB ; 
 scalar_t__ _funcptr_glProgramUniformHandleui64ARB ; 
 scalar_t__ _funcptr_glProgramUniformHandleui64vARB ; 
 scalar_t__ _funcptr_glUniformHandleui64ARB ; 
 scalar_t__ _funcptr_glUniformHandleui64vARB ; 
 scalar_t__ _funcptr_glVertexAttribL1ui64ARB ; 
 scalar_t__ _funcptr_glVertexAttribL1ui64vARB ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetImageHandleARB = (PFNGLGETIMAGEHANDLEARBPROC)FUNC0("glGetImageHandleARB");
	if(!_funcptr_glGetImageHandleARB) ++numFailed;
	_funcptr_glGetTextureHandleARB = (PFNGLGETTEXTUREHANDLEARBPROC)FUNC0("glGetTextureHandleARB");
	if(!_funcptr_glGetTextureHandleARB) ++numFailed;
	_funcptr_glGetTextureSamplerHandleARB = (PFNGLGETTEXTURESAMPLERHANDLEARBPROC)FUNC0("glGetTextureSamplerHandleARB");
	if(!_funcptr_glGetTextureSamplerHandleARB) ++numFailed;
	_funcptr_glGetVertexAttribLui64vARB = (PFNGLGETVERTEXATTRIBLUI64VARBPROC)FUNC0("glGetVertexAttribLui64vARB");
	if(!_funcptr_glGetVertexAttribLui64vARB) ++numFailed;
	_funcptr_glIsImageHandleResidentARB = (PFNGLISIMAGEHANDLERESIDENTARBPROC)FUNC0("glIsImageHandleResidentARB");
	if(!_funcptr_glIsImageHandleResidentARB) ++numFailed;
	_funcptr_glIsTextureHandleResidentARB = (PFNGLISTEXTUREHANDLERESIDENTARBPROC)FUNC0("glIsTextureHandleResidentARB");
	if(!_funcptr_glIsTextureHandleResidentARB) ++numFailed;
	_funcptr_glMakeImageHandleNonResidentARB = (PFNGLMAKEIMAGEHANDLENONRESIDENTARBPROC)FUNC0("glMakeImageHandleNonResidentARB");
	if(!_funcptr_glMakeImageHandleNonResidentARB) ++numFailed;
	_funcptr_glMakeImageHandleResidentARB = (PFNGLMAKEIMAGEHANDLERESIDENTARBPROC)FUNC0("glMakeImageHandleResidentARB");
	if(!_funcptr_glMakeImageHandleResidentARB) ++numFailed;
	_funcptr_glMakeTextureHandleNonResidentARB = (PFNGLMAKETEXTUREHANDLENONRESIDENTARBPROC)FUNC0("glMakeTextureHandleNonResidentARB");
	if(!_funcptr_glMakeTextureHandleNonResidentARB) ++numFailed;
	_funcptr_glMakeTextureHandleResidentARB = (PFNGLMAKETEXTUREHANDLERESIDENTARBPROC)FUNC0("glMakeTextureHandleResidentARB");
	if(!_funcptr_glMakeTextureHandleResidentARB) ++numFailed;
	_funcptr_glProgramUniformHandleui64ARB = (PFNGLPROGRAMUNIFORMHANDLEUI64ARBPROC)FUNC0("glProgramUniformHandleui64ARB");
	if(!_funcptr_glProgramUniformHandleui64ARB) ++numFailed;
	_funcptr_glProgramUniformHandleui64vARB = (PFNGLPROGRAMUNIFORMHANDLEUI64VARBPROC)FUNC0("glProgramUniformHandleui64vARB");
	if(!_funcptr_glProgramUniformHandleui64vARB) ++numFailed;
	_funcptr_glUniformHandleui64ARB = (PFNGLUNIFORMHANDLEUI64ARBPROC)FUNC0("glUniformHandleui64ARB");
	if(!_funcptr_glUniformHandleui64ARB) ++numFailed;
	_funcptr_glUniformHandleui64vARB = (PFNGLUNIFORMHANDLEUI64VARBPROC)FUNC0("glUniformHandleui64vARB");
	if(!_funcptr_glUniformHandleui64vARB) ++numFailed;
	_funcptr_glVertexAttribL1ui64ARB = (PFNGLVERTEXATTRIBL1UI64ARBPROC)FUNC0("glVertexAttribL1ui64ARB");
	if(!_funcptr_glVertexAttribL1ui64ARB) ++numFailed;
	_funcptr_glVertexAttribL1ui64vARB = (PFNGLVERTEXATTRIBL1UI64VARBPROC)FUNC0("glVertexAttribL1ui64vARB");
	if(!_funcptr_glVertexAttribL1ui64vARB) ++numFailed;
	return numFailed;
}