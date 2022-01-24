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
typedef  scalar_t__ PFNGLWINDOWPOS4SVMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS4SMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS4IVMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS4IMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS4FVMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS4FMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS4DVMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS4DMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS3SVMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS3SMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS3IVMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS3IMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS3FVMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS3FMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS3DVMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS3DMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS2SVMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS2SMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS2IVMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS2IMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS2FVMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS2FMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS2DVMESAPROC ;
typedef  scalar_t__ PFNGLWINDOWPOS2DMESAPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glWindowPos2dMESA ; 
 scalar_t__ _funcptr_glWindowPos2dvMESA ; 
 scalar_t__ _funcptr_glWindowPos2fMESA ; 
 scalar_t__ _funcptr_glWindowPos2fvMESA ; 
 scalar_t__ _funcptr_glWindowPos2iMESA ; 
 scalar_t__ _funcptr_glWindowPos2ivMESA ; 
 scalar_t__ _funcptr_glWindowPos2sMESA ; 
 scalar_t__ _funcptr_glWindowPos2svMESA ; 
 scalar_t__ _funcptr_glWindowPos3dMESA ; 
 scalar_t__ _funcptr_glWindowPos3dvMESA ; 
 scalar_t__ _funcptr_glWindowPos3fMESA ; 
 scalar_t__ _funcptr_glWindowPos3fvMESA ; 
 scalar_t__ _funcptr_glWindowPos3iMESA ; 
 scalar_t__ _funcptr_glWindowPos3ivMESA ; 
 scalar_t__ _funcptr_glWindowPos3sMESA ; 
 scalar_t__ _funcptr_glWindowPos3svMESA ; 
 scalar_t__ _funcptr_glWindowPos4dMESA ; 
 scalar_t__ _funcptr_glWindowPos4dvMESA ; 
 scalar_t__ _funcptr_glWindowPos4fMESA ; 
 scalar_t__ _funcptr_glWindowPos4fvMESA ; 
 scalar_t__ _funcptr_glWindowPos4iMESA ; 
 scalar_t__ _funcptr_glWindowPos4ivMESA ; 
 scalar_t__ _funcptr_glWindowPos4sMESA ; 
 scalar_t__ _funcptr_glWindowPos4svMESA ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glWindowPos2dMESA = (PFNGLWINDOWPOS2DMESAPROC)FUNC0("glWindowPos2dMESA");
	if(!_funcptr_glWindowPos2dMESA) ++numFailed;
	_funcptr_glWindowPos2dvMESA = (PFNGLWINDOWPOS2DVMESAPROC)FUNC0("glWindowPos2dvMESA");
	if(!_funcptr_glWindowPos2dvMESA) ++numFailed;
	_funcptr_glWindowPos2fMESA = (PFNGLWINDOWPOS2FMESAPROC)FUNC0("glWindowPos2fMESA");
	if(!_funcptr_glWindowPos2fMESA) ++numFailed;
	_funcptr_glWindowPos2fvMESA = (PFNGLWINDOWPOS2FVMESAPROC)FUNC0("glWindowPos2fvMESA");
	if(!_funcptr_glWindowPos2fvMESA) ++numFailed;
	_funcptr_glWindowPos2iMESA = (PFNGLWINDOWPOS2IMESAPROC)FUNC0("glWindowPos2iMESA");
	if(!_funcptr_glWindowPos2iMESA) ++numFailed;
	_funcptr_glWindowPos2ivMESA = (PFNGLWINDOWPOS2IVMESAPROC)FUNC0("glWindowPos2ivMESA");
	if(!_funcptr_glWindowPos2ivMESA) ++numFailed;
	_funcptr_glWindowPos2sMESA = (PFNGLWINDOWPOS2SMESAPROC)FUNC0("glWindowPos2sMESA");
	if(!_funcptr_glWindowPos2sMESA) ++numFailed;
	_funcptr_glWindowPos2svMESA = (PFNGLWINDOWPOS2SVMESAPROC)FUNC0("glWindowPos2svMESA");
	if(!_funcptr_glWindowPos2svMESA) ++numFailed;
	_funcptr_glWindowPos3dMESA = (PFNGLWINDOWPOS3DMESAPROC)FUNC0("glWindowPos3dMESA");
	if(!_funcptr_glWindowPos3dMESA) ++numFailed;
	_funcptr_glWindowPos3dvMESA = (PFNGLWINDOWPOS3DVMESAPROC)FUNC0("glWindowPos3dvMESA");
	if(!_funcptr_glWindowPos3dvMESA) ++numFailed;
	_funcptr_glWindowPos3fMESA = (PFNGLWINDOWPOS3FMESAPROC)FUNC0("glWindowPos3fMESA");
	if(!_funcptr_glWindowPos3fMESA) ++numFailed;
	_funcptr_glWindowPos3fvMESA = (PFNGLWINDOWPOS3FVMESAPROC)FUNC0("glWindowPos3fvMESA");
	if(!_funcptr_glWindowPos3fvMESA) ++numFailed;
	_funcptr_glWindowPos3iMESA = (PFNGLWINDOWPOS3IMESAPROC)FUNC0("glWindowPos3iMESA");
	if(!_funcptr_glWindowPos3iMESA) ++numFailed;
	_funcptr_glWindowPos3ivMESA = (PFNGLWINDOWPOS3IVMESAPROC)FUNC0("glWindowPos3ivMESA");
	if(!_funcptr_glWindowPos3ivMESA) ++numFailed;
	_funcptr_glWindowPos3sMESA = (PFNGLWINDOWPOS3SMESAPROC)FUNC0("glWindowPos3sMESA");
	if(!_funcptr_glWindowPos3sMESA) ++numFailed;
	_funcptr_glWindowPos3svMESA = (PFNGLWINDOWPOS3SVMESAPROC)FUNC0("glWindowPos3svMESA");
	if(!_funcptr_glWindowPos3svMESA) ++numFailed;
	_funcptr_glWindowPos4dMESA = (PFNGLWINDOWPOS4DMESAPROC)FUNC0("glWindowPos4dMESA");
	if(!_funcptr_glWindowPos4dMESA) ++numFailed;
	_funcptr_glWindowPos4dvMESA = (PFNGLWINDOWPOS4DVMESAPROC)FUNC0("glWindowPos4dvMESA");
	if(!_funcptr_glWindowPos4dvMESA) ++numFailed;
	_funcptr_glWindowPos4fMESA = (PFNGLWINDOWPOS4FMESAPROC)FUNC0("glWindowPos4fMESA");
	if(!_funcptr_glWindowPos4fMESA) ++numFailed;
	_funcptr_glWindowPos4fvMESA = (PFNGLWINDOWPOS4FVMESAPROC)FUNC0("glWindowPos4fvMESA");
	if(!_funcptr_glWindowPos4fvMESA) ++numFailed;
	_funcptr_glWindowPos4iMESA = (PFNGLWINDOWPOS4IMESAPROC)FUNC0("glWindowPos4iMESA");
	if(!_funcptr_glWindowPos4iMESA) ++numFailed;
	_funcptr_glWindowPos4ivMESA = (PFNGLWINDOWPOS4IVMESAPROC)FUNC0("glWindowPos4ivMESA");
	if(!_funcptr_glWindowPos4ivMESA) ++numFailed;
	_funcptr_glWindowPos4sMESA = (PFNGLWINDOWPOS4SMESAPROC)FUNC0("glWindowPos4sMESA");
	if(!_funcptr_glWindowPos4sMESA) ++numFailed;
	_funcptr_glWindowPos4svMESA = (PFNGLWINDOWPOS4SVMESAPROC)FUNC0("glWindowPos4svMESA");
	if(!_funcptr_glWindowPos4svMESA) ++numFailed;
	return numFailed;
}