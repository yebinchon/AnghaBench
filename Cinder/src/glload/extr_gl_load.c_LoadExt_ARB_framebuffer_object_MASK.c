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
typedef  scalar_t__ PFNGLRENDERBUFFERSTORAGEPROC ;
typedef  scalar_t__ PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC ;
typedef  scalar_t__ PFNGLISRENDERBUFFERPROC ;
typedef  scalar_t__ PFNGLISFRAMEBUFFERPROC ;
typedef  scalar_t__ PFNGLGETRENDERBUFFERPARAMETERIVPROC ;
typedef  scalar_t__ PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC ;
typedef  scalar_t__ PFNGLGENRENDERBUFFERSPROC ;
typedef  scalar_t__ PFNGLGENFRAMEBUFFERSPROC ;
typedef  scalar_t__ PFNGLGENERATEMIPMAPPROC ;
typedef  scalar_t__ PFNGLFRAMEBUFFERTEXTURELAYERPROC ;
typedef  scalar_t__ PFNGLFRAMEBUFFERTEXTURE3DPROC ;
typedef  scalar_t__ PFNGLFRAMEBUFFERTEXTURE2DPROC ;
typedef  scalar_t__ PFNGLFRAMEBUFFERTEXTURE1DPROC ;
typedef  scalar_t__ PFNGLFRAMEBUFFERRENDERBUFFERPROC ;
typedef  scalar_t__ PFNGLDELETERENDERBUFFERSPROC ;
typedef  scalar_t__ PFNGLDELETEFRAMEBUFFERSPROC ;
typedef  scalar_t__ PFNGLCHECKFRAMEBUFFERSTATUSPROC ;
typedef  scalar_t__ PFNGLBLITFRAMEBUFFERPROC ;
typedef  scalar_t__ PFNGLBINDRENDERBUFFERPROC ;
typedef  scalar_t__ PFNGLBINDFRAMEBUFFERPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBindFramebuffer ; 
 scalar_t__ _funcptr_glBindRenderbuffer ; 
 scalar_t__ _funcptr_glBlitFramebuffer ; 
 scalar_t__ _funcptr_glCheckFramebufferStatus ; 
 scalar_t__ _funcptr_glDeleteFramebuffers ; 
 scalar_t__ _funcptr_glDeleteRenderbuffers ; 
 scalar_t__ _funcptr_glFramebufferRenderbuffer ; 
 scalar_t__ _funcptr_glFramebufferTexture1D ; 
 scalar_t__ _funcptr_glFramebufferTexture2D ; 
 scalar_t__ _funcptr_glFramebufferTexture3D ; 
 scalar_t__ _funcptr_glFramebufferTextureLayer ; 
 scalar_t__ _funcptr_glGenFramebuffers ; 
 scalar_t__ _funcptr_glGenRenderbuffers ; 
 scalar_t__ _funcptr_glGenerateMipmap ; 
 scalar_t__ _funcptr_glGetFramebufferAttachmentParameteriv ; 
 scalar_t__ _funcptr_glGetRenderbufferParameteriv ; 
 scalar_t__ _funcptr_glIsFramebuffer ; 
 scalar_t__ _funcptr_glIsRenderbuffer ; 
 scalar_t__ _funcptr_glRenderbufferStorage ; 
 scalar_t__ _funcptr_glRenderbufferStorageMultisample ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBindFramebuffer = (PFNGLBINDFRAMEBUFFERPROC)FUNC0("glBindFramebuffer");
	if(!_funcptr_glBindFramebuffer) ++numFailed;
	_funcptr_glBindRenderbuffer = (PFNGLBINDRENDERBUFFERPROC)FUNC0("glBindRenderbuffer");
	if(!_funcptr_glBindRenderbuffer) ++numFailed;
	_funcptr_glBlitFramebuffer = (PFNGLBLITFRAMEBUFFERPROC)FUNC0("glBlitFramebuffer");
	if(!_funcptr_glBlitFramebuffer) ++numFailed;
	_funcptr_glCheckFramebufferStatus = (PFNGLCHECKFRAMEBUFFERSTATUSPROC)FUNC0("glCheckFramebufferStatus");
	if(!_funcptr_glCheckFramebufferStatus) ++numFailed;
	_funcptr_glDeleteFramebuffers = (PFNGLDELETEFRAMEBUFFERSPROC)FUNC0("glDeleteFramebuffers");
	if(!_funcptr_glDeleteFramebuffers) ++numFailed;
	_funcptr_glDeleteRenderbuffers = (PFNGLDELETERENDERBUFFERSPROC)FUNC0("glDeleteRenderbuffers");
	if(!_funcptr_glDeleteRenderbuffers) ++numFailed;
	_funcptr_glFramebufferRenderbuffer = (PFNGLFRAMEBUFFERRENDERBUFFERPROC)FUNC0("glFramebufferRenderbuffer");
	if(!_funcptr_glFramebufferRenderbuffer) ++numFailed;
	_funcptr_glFramebufferTexture1D = (PFNGLFRAMEBUFFERTEXTURE1DPROC)FUNC0("glFramebufferTexture1D");
	if(!_funcptr_glFramebufferTexture1D) ++numFailed;
	_funcptr_glFramebufferTexture2D = (PFNGLFRAMEBUFFERTEXTURE2DPROC)FUNC0("glFramebufferTexture2D");
	if(!_funcptr_glFramebufferTexture2D) ++numFailed;
	_funcptr_glFramebufferTexture3D = (PFNGLFRAMEBUFFERTEXTURE3DPROC)FUNC0("glFramebufferTexture3D");
	if(!_funcptr_glFramebufferTexture3D) ++numFailed;
	_funcptr_glFramebufferTextureLayer = (PFNGLFRAMEBUFFERTEXTURELAYERPROC)FUNC0("glFramebufferTextureLayer");
	if(!_funcptr_glFramebufferTextureLayer) ++numFailed;
	_funcptr_glGenFramebuffers = (PFNGLGENFRAMEBUFFERSPROC)FUNC0("glGenFramebuffers");
	if(!_funcptr_glGenFramebuffers) ++numFailed;
	_funcptr_glGenRenderbuffers = (PFNGLGENRENDERBUFFERSPROC)FUNC0("glGenRenderbuffers");
	if(!_funcptr_glGenRenderbuffers) ++numFailed;
	_funcptr_glGenerateMipmap = (PFNGLGENERATEMIPMAPPROC)FUNC0("glGenerateMipmap");
	if(!_funcptr_glGenerateMipmap) ++numFailed;
	_funcptr_glGetFramebufferAttachmentParameteriv = (PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC)FUNC0("glGetFramebufferAttachmentParameteriv");
	if(!_funcptr_glGetFramebufferAttachmentParameteriv) ++numFailed;
	_funcptr_glGetRenderbufferParameteriv = (PFNGLGETRENDERBUFFERPARAMETERIVPROC)FUNC0("glGetRenderbufferParameteriv");
	if(!_funcptr_glGetRenderbufferParameteriv) ++numFailed;
	_funcptr_glIsFramebuffer = (PFNGLISFRAMEBUFFERPROC)FUNC0("glIsFramebuffer");
	if(!_funcptr_glIsFramebuffer) ++numFailed;
	_funcptr_glIsRenderbuffer = (PFNGLISRENDERBUFFERPROC)FUNC0("glIsRenderbuffer");
	if(!_funcptr_glIsRenderbuffer) ++numFailed;
	_funcptr_glRenderbufferStorage = (PFNGLRENDERBUFFERSTORAGEPROC)FUNC0("glRenderbufferStorage");
	if(!_funcptr_glRenderbufferStorage) ++numFailed;
	_funcptr_glRenderbufferStorageMultisample = (PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC)FUNC0("glRenderbufferStorageMultisample");
	if(!_funcptr_glRenderbufferStorageMultisample) ++numFailed;
	return numFailed;
}