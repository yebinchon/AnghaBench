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
typedef  scalar_t__ PFNGLSAMPLECOVERAGEPROC ;
typedef  scalar_t__ PFNGLGETCOMPRESSEDTEXIMAGEPROC ;
typedef  scalar_t__ PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC ;
typedef  scalar_t__ PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC ;
typedef  scalar_t__ PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC ;
typedef  scalar_t__ PFNGLCOMPRESSEDTEXIMAGE3DPROC ;
typedef  scalar_t__ PFNGLCOMPRESSEDTEXIMAGE2DPROC ;
typedef  scalar_t__ PFNGLCOMPRESSEDTEXIMAGE1DPROC ;
typedef  scalar_t__ PFNGLACTIVETEXTUREPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glActiveTexture ; 
 scalar_t__ _funcptr_glCompressedTexImage1D ; 
 scalar_t__ _funcptr_glCompressedTexImage2D ; 
 scalar_t__ _funcptr_glCompressedTexImage3D ; 
 scalar_t__ _funcptr_glCompressedTexSubImage1D ; 
 scalar_t__ _funcptr_glCompressedTexSubImage2D ; 
 scalar_t__ _funcptr_glCompressedTexSubImage3D ; 
 scalar_t__ _funcptr_glGetCompressedTexImage ; 
 scalar_t__ _funcptr_glSampleCoverage ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glActiveTexture = (PFNGLACTIVETEXTUREPROC)FUNC0("glActiveTexture");
	if(!_funcptr_glActiveTexture) ++numFailed;
	_funcptr_glCompressedTexImage1D = (PFNGLCOMPRESSEDTEXIMAGE1DPROC)FUNC0("glCompressedTexImage1D");
	if(!_funcptr_glCompressedTexImage1D) ++numFailed;
	_funcptr_glCompressedTexImage2D = (PFNGLCOMPRESSEDTEXIMAGE2DPROC)FUNC0("glCompressedTexImage2D");
	if(!_funcptr_glCompressedTexImage2D) ++numFailed;
	_funcptr_glCompressedTexImage3D = (PFNGLCOMPRESSEDTEXIMAGE3DPROC)FUNC0("glCompressedTexImage3D");
	if(!_funcptr_glCompressedTexImage3D) ++numFailed;
	_funcptr_glCompressedTexSubImage1D = (PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC)FUNC0("glCompressedTexSubImage1D");
	if(!_funcptr_glCompressedTexSubImage1D) ++numFailed;
	_funcptr_glCompressedTexSubImage2D = (PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC)FUNC0("glCompressedTexSubImage2D");
	if(!_funcptr_glCompressedTexSubImage2D) ++numFailed;
	_funcptr_glCompressedTexSubImage3D = (PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC)FUNC0("glCompressedTexSubImage3D");
	if(!_funcptr_glCompressedTexSubImage3D) ++numFailed;
	_funcptr_glGetCompressedTexImage = (PFNGLGETCOMPRESSEDTEXIMAGEPROC)FUNC0("glGetCompressedTexImage");
	if(!_funcptr_glGetCompressedTexImage) ++numFailed;
	_funcptr_glSampleCoverage = (PFNGLSAMPLECOVERAGEPROC)FUNC0("glSampleCoverage");
	if(!_funcptr_glSampleCoverage) ++numFailed;
	return numFailed;
}