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
typedef  scalar_t__ PFNGLTEXTUREIMAGE3DMULTISAMPLENVPROC ;
typedef  scalar_t__ PFNGLTEXTUREIMAGE3DMULTISAMPLECOVERAGENVPROC ;
typedef  scalar_t__ PFNGLTEXTUREIMAGE2DMULTISAMPLENVPROC ;
typedef  scalar_t__ PFNGLTEXTUREIMAGE2DMULTISAMPLECOVERAGENVPROC ;
typedef  scalar_t__ PFNGLTEXIMAGE3DMULTISAMPLECOVERAGENVPROC ;
typedef  scalar_t__ PFNGLTEXIMAGE2DMULTISAMPLECOVERAGENVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glTexImage2DMultisampleCoverageNV ; 
 scalar_t__ _funcptr_glTexImage3DMultisampleCoverageNV ; 
 scalar_t__ _funcptr_glTextureImage2DMultisampleCoverageNV ; 
 scalar_t__ _funcptr_glTextureImage2DMultisampleNV ; 
 scalar_t__ _funcptr_glTextureImage3DMultisampleCoverageNV ; 
 scalar_t__ _funcptr_glTextureImage3DMultisampleNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glTexImage2DMultisampleCoverageNV = (PFNGLTEXIMAGE2DMULTISAMPLECOVERAGENVPROC)FUNC0("glTexImage2DMultisampleCoverageNV");
	if(!_funcptr_glTexImage2DMultisampleCoverageNV) ++numFailed;
	_funcptr_glTexImage3DMultisampleCoverageNV = (PFNGLTEXIMAGE3DMULTISAMPLECOVERAGENVPROC)FUNC0("glTexImage3DMultisampleCoverageNV");
	if(!_funcptr_glTexImage3DMultisampleCoverageNV) ++numFailed;
	_funcptr_glTextureImage2DMultisampleCoverageNV = (PFNGLTEXTUREIMAGE2DMULTISAMPLECOVERAGENVPROC)FUNC0("glTextureImage2DMultisampleCoverageNV");
	if(!_funcptr_glTextureImage2DMultisampleCoverageNV) ++numFailed;
	_funcptr_glTextureImage2DMultisampleNV = (PFNGLTEXTUREIMAGE2DMULTISAMPLENVPROC)FUNC0("glTextureImage2DMultisampleNV");
	if(!_funcptr_glTextureImage2DMultisampleNV) ++numFailed;
	_funcptr_glTextureImage3DMultisampleCoverageNV = (PFNGLTEXTUREIMAGE3DMULTISAMPLECOVERAGENVPROC)FUNC0("glTextureImage3DMultisampleCoverageNV");
	if(!_funcptr_glTextureImage3DMultisampleCoverageNV) ++numFailed;
	_funcptr_glTextureImage3DMultisampleNV = (PFNGLTEXTUREIMAGE3DMULTISAMPLENVPROC)FUNC0("glTextureImage3DMultisampleNV");
	if(!_funcptr_glTextureImage3DMultisampleNV) ++numFailed;
	return numFailed;
}