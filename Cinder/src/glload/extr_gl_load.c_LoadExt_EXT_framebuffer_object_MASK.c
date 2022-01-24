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
typedef  scalar_t__ PFNGLRENDERBUFFERSTORAGEEXTPROC ;
typedef  scalar_t__ PFNGLISRENDERBUFFEREXTPROC ;
typedef  scalar_t__ PFNGLISFRAMEBUFFEREXTPROC ;
typedef  scalar_t__ PFNGLGETRENDERBUFFERPARAMETERIVEXTPROC ;
typedef  scalar_t__ PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC ;
typedef  scalar_t__ PFNGLGENRENDERBUFFERSEXTPROC ;
typedef  scalar_t__ PFNGLGENFRAMEBUFFERSEXTPROC ;
typedef  scalar_t__ PFNGLGENERATEMIPMAPEXTPROC ;
typedef  scalar_t__ PFNGLFRAMEBUFFERTEXTURE3DEXTPROC ;
typedef  scalar_t__ PFNGLFRAMEBUFFERTEXTURE2DEXTPROC ;
typedef  scalar_t__ PFNGLFRAMEBUFFERTEXTURE1DEXTPROC ;
typedef  scalar_t__ PFNGLFRAMEBUFFERRENDERBUFFEREXTPROC ;
typedef  scalar_t__ PFNGLDELETERENDERBUFFERSEXTPROC ;
typedef  scalar_t__ PFNGLDELETEFRAMEBUFFERSEXTPROC ;
typedef  scalar_t__ PFNGLCHECKFRAMEBUFFERSTATUSEXTPROC ;
typedef  scalar_t__ PFNGLBINDRENDERBUFFEREXTPROC ;
typedef  scalar_t__ PFNGLBINDFRAMEBUFFEREXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBindFramebufferEXT ; 
 scalar_t__ _funcptr_glBindRenderbufferEXT ; 
 scalar_t__ _funcptr_glCheckFramebufferStatusEXT ; 
 scalar_t__ _funcptr_glDeleteFramebuffersEXT ; 
 scalar_t__ _funcptr_glDeleteRenderbuffersEXT ; 
 scalar_t__ _funcptr_glFramebufferRenderbufferEXT ; 
 scalar_t__ _funcptr_glFramebufferTexture1DEXT ; 
 scalar_t__ _funcptr_glFramebufferTexture2DEXT ; 
 scalar_t__ _funcptr_glFramebufferTexture3DEXT ; 
 scalar_t__ _funcptr_glGenFramebuffersEXT ; 
 scalar_t__ _funcptr_glGenRenderbuffersEXT ; 
 scalar_t__ _funcptr_glGenerateMipmapEXT ; 
 scalar_t__ _funcptr_glGetFramebufferAttachmentParameterivEXT ; 
 scalar_t__ _funcptr_glGetRenderbufferParameterivEXT ; 
 scalar_t__ _funcptr_glIsFramebufferEXT ; 
 scalar_t__ _funcptr_glIsRenderbufferEXT ; 
 scalar_t__ _funcptr_glRenderbufferStorageEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBindFramebufferEXT = (PFNGLBINDFRAMEBUFFEREXTPROC)FUNC0("glBindFramebufferEXT");
	if(!_funcptr_glBindFramebufferEXT) ++numFailed;
	_funcptr_glBindRenderbufferEXT = (PFNGLBINDRENDERBUFFEREXTPROC)FUNC0("glBindRenderbufferEXT");
	if(!_funcptr_glBindRenderbufferEXT) ++numFailed;
	_funcptr_glCheckFramebufferStatusEXT = (PFNGLCHECKFRAMEBUFFERSTATUSEXTPROC)FUNC0("glCheckFramebufferStatusEXT");
	if(!_funcptr_glCheckFramebufferStatusEXT) ++numFailed;
	_funcptr_glDeleteFramebuffersEXT = (PFNGLDELETEFRAMEBUFFERSEXTPROC)FUNC0("glDeleteFramebuffersEXT");
	if(!_funcptr_glDeleteFramebuffersEXT) ++numFailed;
	_funcptr_glDeleteRenderbuffersEXT = (PFNGLDELETERENDERBUFFERSEXTPROC)FUNC0("glDeleteRenderbuffersEXT");
	if(!_funcptr_glDeleteRenderbuffersEXT) ++numFailed;
	_funcptr_glFramebufferRenderbufferEXT = (PFNGLFRAMEBUFFERRENDERBUFFEREXTPROC)FUNC0("glFramebufferRenderbufferEXT");
	if(!_funcptr_glFramebufferRenderbufferEXT) ++numFailed;
	_funcptr_glFramebufferTexture1DEXT = (PFNGLFRAMEBUFFERTEXTURE1DEXTPROC)FUNC0("glFramebufferTexture1DEXT");
	if(!_funcptr_glFramebufferTexture1DEXT) ++numFailed;
	_funcptr_glFramebufferTexture2DEXT = (PFNGLFRAMEBUFFERTEXTURE2DEXTPROC)FUNC0("glFramebufferTexture2DEXT");
	if(!_funcptr_glFramebufferTexture2DEXT) ++numFailed;
	_funcptr_glFramebufferTexture3DEXT = (PFNGLFRAMEBUFFERTEXTURE3DEXTPROC)FUNC0("glFramebufferTexture3DEXT");
	if(!_funcptr_glFramebufferTexture3DEXT) ++numFailed;
	_funcptr_glGenFramebuffersEXT = (PFNGLGENFRAMEBUFFERSEXTPROC)FUNC0("glGenFramebuffersEXT");
	if(!_funcptr_glGenFramebuffersEXT) ++numFailed;
	_funcptr_glGenRenderbuffersEXT = (PFNGLGENRENDERBUFFERSEXTPROC)FUNC0("glGenRenderbuffersEXT");
	if(!_funcptr_glGenRenderbuffersEXT) ++numFailed;
	_funcptr_glGenerateMipmapEXT = (PFNGLGENERATEMIPMAPEXTPROC)FUNC0("glGenerateMipmapEXT");
	if(!_funcptr_glGenerateMipmapEXT) ++numFailed;
	_funcptr_glGetFramebufferAttachmentParameterivEXT = (PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC)FUNC0("glGetFramebufferAttachmentParameterivEXT");
	if(!_funcptr_glGetFramebufferAttachmentParameterivEXT) ++numFailed;
	_funcptr_glGetRenderbufferParameterivEXT = (PFNGLGETRENDERBUFFERPARAMETERIVEXTPROC)FUNC0("glGetRenderbufferParameterivEXT");
	if(!_funcptr_glGetRenderbufferParameterivEXT) ++numFailed;
	_funcptr_glIsFramebufferEXT = (PFNGLISFRAMEBUFFEREXTPROC)FUNC0("glIsFramebufferEXT");
	if(!_funcptr_glIsFramebufferEXT) ++numFailed;
	_funcptr_glIsRenderbufferEXT = (PFNGLISRENDERBUFFEREXTPROC)FUNC0("glIsRenderbufferEXT");
	if(!_funcptr_glIsRenderbufferEXT) ++numFailed;
	_funcptr_glRenderbufferStorageEXT = (PFNGLRENDERBUFFERSTORAGEEXTPROC)FUNC0("glRenderbufferStorageEXT");
	if(!_funcptr_glRenderbufferStorageEXT) ++numFailed;
	return numFailed;
}