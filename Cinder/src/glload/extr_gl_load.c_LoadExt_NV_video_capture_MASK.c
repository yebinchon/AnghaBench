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
typedef  scalar_t__ PFNGLVIDEOCAPTURESTREAMPARAMETERIVNVPROC ;
typedef  scalar_t__ PFNGLVIDEOCAPTURESTREAMPARAMETERFVNVPROC ;
typedef  scalar_t__ PFNGLVIDEOCAPTURESTREAMPARAMETERDVNVPROC ;
typedef  scalar_t__ PFNGLVIDEOCAPTURENVPROC ;
typedef  scalar_t__ PFNGLGETVIDEOCAPTURESTREAMIVNVPROC ;
typedef  scalar_t__ PFNGLGETVIDEOCAPTURESTREAMFVNVPROC ;
typedef  scalar_t__ PFNGLGETVIDEOCAPTURESTREAMDVNVPROC ;
typedef  scalar_t__ PFNGLGETVIDEOCAPTUREIVNVPROC ;
typedef  scalar_t__ PFNGLENDVIDEOCAPTURENVPROC ;
typedef  scalar_t__ PFNGLBINDVIDEOCAPTURESTREAMTEXTURENVPROC ;
typedef  scalar_t__ PFNGLBINDVIDEOCAPTURESTREAMBUFFERNVPROC ;
typedef  scalar_t__ PFNGLBEGINVIDEOCAPTURENVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBeginVideoCaptureNV ; 
 scalar_t__ _funcptr_glBindVideoCaptureStreamBufferNV ; 
 scalar_t__ _funcptr_glBindVideoCaptureStreamTextureNV ; 
 scalar_t__ _funcptr_glEndVideoCaptureNV ; 
 scalar_t__ _funcptr_glGetVideoCaptureStreamdvNV ; 
 scalar_t__ _funcptr_glGetVideoCaptureStreamfvNV ; 
 scalar_t__ _funcptr_glGetVideoCaptureStreamivNV ; 
 scalar_t__ _funcptr_glGetVideoCaptureivNV ; 
 scalar_t__ _funcptr_glVideoCaptureNV ; 
 scalar_t__ _funcptr_glVideoCaptureStreamParameterdvNV ; 
 scalar_t__ _funcptr_glVideoCaptureStreamParameterfvNV ; 
 scalar_t__ _funcptr_glVideoCaptureStreamParameterivNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBeginVideoCaptureNV = (PFNGLBEGINVIDEOCAPTURENVPROC)FUNC0("glBeginVideoCaptureNV");
	if(!_funcptr_glBeginVideoCaptureNV) ++numFailed;
	_funcptr_glBindVideoCaptureStreamBufferNV = (PFNGLBINDVIDEOCAPTURESTREAMBUFFERNVPROC)FUNC0("glBindVideoCaptureStreamBufferNV");
	if(!_funcptr_glBindVideoCaptureStreamBufferNV) ++numFailed;
	_funcptr_glBindVideoCaptureStreamTextureNV = (PFNGLBINDVIDEOCAPTURESTREAMTEXTURENVPROC)FUNC0("glBindVideoCaptureStreamTextureNV");
	if(!_funcptr_glBindVideoCaptureStreamTextureNV) ++numFailed;
	_funcptr_glEndVideoCaptureNV = (PFNGLENDVIDEOCAPTURENVPROC)FUNC0("glEndVideoCaptureNV");
	if(!_funcptr_glEndVideoCaptureNV) ++numFailed;
	_funcptr_glGetVideoCaptureStreamdvNV = (PFNGLGETVIDEOCAPTURESTREAMDVNVPROC)FUNC0("glGetVideoCaptureStreamdvNV");
	if(!_funcptr_glGetVideoCaptureStreamdvNV) ++numFailed;
	_funcptr_glGetVideoCaptureStreamfvNV = (PFNGLGETVIDEOCAPTURESTREAMFVNVPROC)FUNC0("glGetVideoCaptureStreamfvNV");
	if(!_funcptr_glGetVideoCaptureStreamfvNV) ++numFailed;
	_funcptr_glGetVideoCaptureStreamivNV = (PFNGLGETVIDEOCAPTURESTREAMIVNVPROC)FUNC0("glGetVideoCaptureStreamivNV");
	if(!_funcptr_glGetVideoCaptureStreamivNV) ++numFailed;
	_funcptr_glGetVideoCaptureivNV = (PFNGLGETVIDEOCAPTUREIVNVPROC)FUNC0("glGetVideoCaptureivNV");
	if(!_funcptr_glGetVideoCaptureivNV) ++numFailed;
	_funcptr_glVideoCaptureNV = (PFNGLVIDEOCAPTURENVPROC)FUNC0("glVideoCaptureNV");
	if(!_funcptr_glVideoCaptureNV) ++numFailed;
	_funcptr_glVideoCaptureStreamParameterdvNV = (PFNGLVIDEOCAPTURESTREAMPARAMETERDVNVPROC)FUNC0("glVideoCaptureStreamParameterdvNV");
	if(!_funcptr_glVideoCaptureStreamParameterdvNV) ++numFailed;
	_funcptr_glVideoCaptureStreamParameterfvNV = (PFNGLVIDEOCAPTURESTREAMPARAMETERFVNVPROC)FUNC0("glVideoCaptureStreamParameterfvNV");
	if(!_funcptr_glVideoCaptureStreamParameterfvNV) ++numFailed;
	_funcptr_glVideoCaptureStreamParameterivNV = (PFNGLVIDEOCAPTURESTREAMPARAMETERIVNVPROC)FUNC0("glVideoCaptureStreamParameterivNV");
	if(!_funcptr_glVideoCaptureStreamParameterivNV) ++numFailed;
	return numFailed;
}