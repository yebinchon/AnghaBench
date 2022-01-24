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
typedef  scalar_t__ PFNGLPROGRAMVERTEXLIMITNVPROC ;
typedef  scalar_t__ PFNGLFRAMEBUFFERTEXTURELAYEREXTPROC ;
typedef  scalar_t__ PFNGLFRAMEBUFFERTEXTUREFACEEXTPROC ;
typedef  scalar_t__ PFNGLFRAMEBUFFERTEXTUREEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glFramebufferTextureEXT ; 
 scalar_t__ _funcptr_glFramebufferTextureFaceEXT ; 
 scalar_t__ _funcptr_glFramebufferTextureLayerEXT ; 
 scalar_t__ _funcptr_glProgramVertexLimitNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glFramebufferTextureEXT = (PFNGLFRAMEBUFFERTEXTUREEXTPROC)FUNC0("glFramebufferTextureEXT");
	if(!_funcptr_glFramebufferTextureEXT) ++numFailed;
	_funcptr_glFramebufferTextureFaceEXT = (PFNGLFRAMEBUFFERTEXTUREFACEEXTPROC)FUNC0("glFramebufferTextureFaceEXT");
	if(!_funcptr_glFramebufferTextureFaceEXT) ++numFailed;
	_funcptr_glFramebufferTextureLayerEXT = (PFNGLFRAMEBUFFERTEXTURELAYEREXTPROC)FUNC0("glFramebufferTextureLayerEXT");
	if(!_funcptr_glFramebufferTextureLayerEXT) ++numFailed;
	_funcptr_glProgramVertexLimitNV = (PFNGLPROGRAMVERTEXLIMITNVPROC)FUNC0("glProgramVertexLimitNV");
	if(!_funcptr_glProgramVertexLimitNV) ++numFailed;
	return numFailed;
}