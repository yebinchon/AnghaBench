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
typedef  scalar_t__ PFNGLPROGRAMPARAMETERIARBPROC ;
typedef  scalar_t__ PFNGLFRAMEBUFFERTEXTURELAYERARBPROC ;
typedef  scalar_t__ PFNGLFRAMEBUFFERTEXTUREFACEARBPROC ;
typedef  scalar_t__ PFNGLFRAMEBUFFERTEXTUREARBPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glFramebufferTextureARB ; 
 scalar_t__ _funcptr_glFramebufferTextureFaceARB ; 
 scalar_t__ _funcptr_glFramebufferTextureLayerARB ; 
 scalar_t__ _funcptr_glProgramParameteriARB ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glFramebufferTextureARB = (PFNGLFRAMEBUFFERTEXTUREARBPROC)FUNC0("glFramebufferTextureARB");
	if(!_funcptr_glFramebufferTextureARB) ++numFailed;
	_funcptr_glFramebufferTextureFaceARB = (PFNGLFRAMEBUFFERTEXTUREFACEARBPROC)FUNC0("glFramebufferTextureFaceARB");
	if(!_funcptr_glFramebufferTextureFaceARB) ++numFailed;
	_funcptr_glFramebufferTextureLayerARB = (PFNGLFRAMEBUFFERTEXTURELAYERARBPROC)FUNC0("glFramebufferTextureLayerARB");
	if(!_funcptr_glFramebufferTextureLayerARB) ++numFailed;
	_funcptr_glProgramParameteriARB = (PFNGLPROGRAMPARAMETERIARBPROC)FUNC0("glProgramParameteriARB");
	if(!_funcptr_glProgramParameteriARB) ++numFailed;
	return numFailed;
}