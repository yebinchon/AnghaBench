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
typedef  scalar_t__ PFNGLSECONDARYCOLORPOINTEREXTPROC ;
typedef  scalar_t__ PFNGLSECONDARYCOLOR3USVEXTPROC ;
typedef  scalar_t__ PFNGLSECONDARYCOLOR3USEXTPROC ;
typedef  scalar_t__ PFNGLSECONDARYCOLOR3UIVEXTPROC ;
typedef  scalar_t__ PFNGLSECONDARYCOLOR3UIEXTPROC ;
typedef  scalar_t__ PFNGLSECONDARYCOLOR3UBVEXTPROC ;
typedef  scalar_t__ PFNGLSECONDARYCOLOR3UBEXTPROC ;
typedef  scalar_t__ PFNGLSECONDARYCOLOR3SVEXTPROC ;
typedef  scalar_t__ PFNGLSECONDARYCOLOR3SEXTPROC ;
typedef  scalar_t__ PFNGLSECONDARYCOLOR3IVEXTPROC ;
typedef  scalar_t__ PFNGLSECONDARYCOLOR3IEXTPROC ;
typedef  scalar_t__ PFNGLSECONDARYCOLOR3FVEXTPROC ;
typedef  scalar_t__ PFNGLSECONDARYCOLOR3FEXTPROC ;
typedef  scalar_t__ PFNGLSECONDARYCOLOR3DVEXTPROC ;
typedef  scalar_t__ PFNGLSECONDARYCOLOR3DEXTPROC ;
typedef  scalar_t__ PFNGLSECONDARYCOLOR3BVEXTPROC ;
typedef  scalar_t__ PFNGLSECONDARYCOLOR3BEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glSecondaryColor3bEXT ; 
 scalar_t__ _funcptr_glSecondaryColor3bvEXT ; 
 scalar_t__ _funcptr_glSecondaryColor3dEXT ; 
 scalar_t__ _funcptr_glSecondaryColor3dvEXT ; 
 scalar_t__ _funcptr_glSecondaryColor3fEXT ; 
 scalar_t__ _funcptr_glSecondaryColor3fvEXT ; 
 scalar_t__ _funcptr_glSecondaryColor3iEXT ; 
 scalar_t__ _funcptr_glSecondaryColor3ivEXT ; 
 scalar_t__ _funcptr_glSecondaryColor3sEXT ; 
 scalar_t__ _funcptr_glSecondaryColor3svEXT ; 
 scalar_t__ _funcptr_glSecondaryColor3ubEXT ; 
 scalar_t__ _funcptr_glSecondaryColor3ubvEXT ; 
 scalar_t__ _funcptr_glSecondaryColor3uiEXT ; 
 scalar_t__ _funcptr_glSecondaryColor3uivEXT ; 
 scalar_t__ _funcptr_glSecondaryColor3usEXT ; 
 scalar_t__ _funcptr_glSecondaryColor3usvEXT ; 
 scalar_t__ _funcptr_glSecondaryColorPointerEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glSecondaryColor3bEXT = (PFNGLSECONDARYCOLOR3BEXTPROC)FUNC0("glSecondaryColor3bEXT");
	if(!_funcptr_glSecondaryColor3bEXT) ++numFailed;
	_funcptr_glSecondaryColor3bvEXT = (PFNGLSECONDARYCOLOR3BVEXTPROC)FUNC0("glSecondaryColor3bvEXT");
	if(!_funcptr_glSecondaryColor3bvEXT) ++numFailed;
	_funcptr_glSecondaryColor3dEXT = (PFNGLSECONDARYCOLOR3DEXTPROC)FUNC0("glSecondaryColor3dEXT");
	if(!_funcptr_glSecondaryColor3dEXT) ++numFailed;
	_funcptr_glSecondaryColor3dvEXT = (PFNGLSECONDARYCOLOR3DVEXTPROC)FUNC0("glSecondaryColor3dvEXT");
	if(!_funcptr_glSecondaryColor3dvEXT) ++numFailed;
	_funcptr_glSecondaryColor3fEXT = (PFNGLSECONDARYCOLOR3FEXTPROC)FUNC0("glSecondaryColor3fEXT");
	if(!_funcptr_glSecondaryColor3fEXT) ++numFailed;
	_funcptr_glSecondaryColor3fvEXT = (PFNGLSECONDARYCOLOR3FVEXTPROC)FUNC0("glSecondaryColor3fvEXT");
	if(!_funcptr_glSecondaryColor3fvEXT) ++numFailed;
	_funcptr_glSecondaryColor3iEXT = (PFNGLSECONDARYCOLOR3IEXTPROC)FUNC0("glSecondaryColor3iEXT");
	if(!_funcptr_glSecondaryColor3iEXT) ++numFailed;
	_funcptr_glSecondaryColor3ivEXT = (PFNGLSECONDARYCOLOR3IVEXTPROC)FUNC0("glSecondaryColor3ivEXT");
	if(!_funcptr_glSecondaryColor3ivEXT) ++numFailed;
	_funcptr_glSecondaryColor3sEXT = (PFNGLSECONDARYCOLOR3SEXTPROC)FUNC0("glSecondaryColor3sEXT");
	if(!_funcptr_glSecondaryColor3sEXT) ++numFailed;
	_funcptr_glSecondaryColor3svEXT = (PFNGLSECONDARYCOLOR3SVEXTPROC)FUNC0("glSecondaryColor3svEXT");
	if(!_funcptr_glSecondaryColor3svEXT) ++numFailed;
	_funcptr_glSecondaryColor3ubEXT = (PFNGLSECONDARYCOLOR3UBEXTPROC)FUNC0("glSecondaryColor3ubEXT");
	if(!_funcptr_glSecondaryColor3ubEXT) ++numFailed;
	_funcptr_glSecondaryColor3ubvEXT = (PFNGLSECONDARYCOLOR3UBVEXTPROC)FUNC0("glSecondaryColor3ubvEXT");
	if(!_funcptr_glSecondaryColor3ubvEXT) ++numFailed;
	_funcptr_glSecondaryColor3uiEXT = (PFNGLSECONDARYCOLOR3UIEXTPROC)FUNC0("glSecondaryColor3uiEXT");
	if(!_funcptr_glSecondaryColor3uiEXT) ++numFailed;
	_funcptr_glSecondaryColor3uivEXT = (PFNGLSECONDARYCOLOR3UIVEXTPROC)FUNC0("glSecondaryColor3uivEXT");
	if(!_funcptr_glSecondaryColor3uivEXT) ++numFailed;
	_funcptr_glSecondaryColor3usEXT = (PFNGLSECONDARYCOLOR3USEXTPROC)FUNC0("glSecondaryColor3usEXT");
	if(!_funcptr_glSecondaryColor3usEXT) ++numFailed;
	_funcptr_glSecondaryColor3usvEXT = (PFNGLSECONDARYCOLOR3USVEXTPROC)FUNC0("glSecondaryColor3usvEXT");
	if(!_funcptr_glSecondaryColor3usvEXT) ++numFailed;
	_funcptr_glSecondaryColorPointerEXT = (PFNGLSECONDARYCOLORPOINTEREXTPROC)FUNC0("glSecondaryColorPointerEXT");
	if(!_funcptr_glSecondaryColorPointerEXT) ++numFailed;
	return numFailed;
}