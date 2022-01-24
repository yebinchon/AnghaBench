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
typedef  scalar_t__ PFNGLREADNPIXELSARBPROC ;
typedef  scalar_t__ PFNGLGETNUNIFORMUIVARBPROC ;
typedef  scalar_t__ PFNGLGETNUNIFORMIVARBPROC ;
typedef  scalar_t__ PFNGLGETNUNIFORMFVARBPROC ;
typedef  scalar_t__ PFNGLGETNUNIFORMDVARBPROC ;
typedef  scalar_t__ PFNGLGETNTEXIMAGEARBPROC ;
typedef  scalar_t__ PFNGLGETNSEPARABLEFILTERARBPROC ;
typedef  scalar_t__ PFNGLGETNPOLYGONSTIPPLEARBPROC ;
typedef  scalar_t__ PFNGLGETNPIXELMAPUSVARBPROC ;
typedef  scalar_t__ PFNGLGETNPIXELMAPUIVARBPROC ;
typedef  scalar_t__ PFNGLGETNPIXELMAPFVARBPROC ;
typedef  scalar_t__ PFNGLGETNMINMAXARBPROC ;
typedef  scalar_t__ PFNGLGETNMAPIVARBPROC ;
typedef  scalar_t__ PFNGLGETNMAPFVARBPROC ;
typedef  scalar_t__ PFNGLGETNMAPDVARBPROC ;
typedef  scalar_t__ PFNGLGETNHISTOGRAMARBPROC ;
typedef  scalar_t__ PFNGLGETNCONVOLUTIONFILTERARBPROC ;
typedef  scalar_t__ PFNGLGETNCOMPRESSEDTEXIMAGEARBPROC ;
typedef  scalar_t__ PFNGLGETNCOLORTABLEARBPROC ;
typedef  scalar_t__ PFNGLGETGRAPHICSRESETSTATUSARBPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetGraphicsResetStatusARB ; 
 scalar_t__ _funcptr_glGetnColorTableARB ; 
 scalar_t__ _funcptr_glGetnCompressedTexImageARB ; 
 scalar_t__ _funcptr_glGetnConvolutionFilterARB ; 
 scalar_t__ _funcptr_glGetnHistogramARB ; 
 scalar_t__ _funcptr_glGetnMapdvARB ; 
 scalar_t__ _funcptr_glGetnMapfvARB ; 
 scalar_t__ _funcptr_glGetnMapivARB ; 
 scalar_t__ _funcptr_glGetnMinmaxARB ; 
 scalar_t__ _funcptr_glGetnPixelMapfvARB ; 
 scalar_t__ _funcptr_glGetnPixelMapuivARB ; 
 scalar_t__ _funcptr_glGetnPixelMapusvARB ; 
 scalar_t__ _funcptr_glGetnPolygonStippleARB ; 
 scalar_t__ _funcptr_glGetnSeparableFilterARB ; 
 scalar_t__ _funcptr_glGetnTexImageARB ; 
 scalar_t__ _funcptr_glGetnUniformdvARB ; 
 scalar_t__ _funcptr_glGetnUniformfvARB ; 
 scalar_t__ _funcptr_glGetnUniformivARB ; 
 scalar_t__ _funcptr_glGetnUniformuivARB ; 
 scalar_t__ _funcptr_glReadnPixelsARB ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetGraphicsResetStatusARB = (PFNGLGETGRAPHICSRESETSTATUSARBPROC)FUNC0("glGetGraphicsResetStatusARB");
	if(!_funcptr_glGetGraphicsResetStatusARB) ++numFailed;
	_funcptr_glGetnColorTableARB = (PFNGLGETNCOLORTABLEARBPROC)FUNC0("glGetnColorTableARB");
	if(!_funcptr_glGetnColorTableARB) ++numFailed;
	_funcptr_glGetnCompressedTexImageARB = (PFNGLGETNCOMPRESSEDTEXIMAGEARBPROC)FUNC0("glGetnCompressedTexImageARB");
	if(!_funcptr_glGetnCompressedTexImageARB) ++numFailed;
	_funcptr_glGetnConvolutionFilterARB = (PFNGLGETNCONVOLUTIONFILTERARBPROC)FUNC0("glGetnConvolutionFilterARB");
	if(!_funcptr_glGetnConvolutionFilterARB) ++numFailed;
	_funcptr_glGetnHistogramARB = (PFNGLGETNHISTOGRAMARBPROC)FUNC0("glGetnHistogramARB");
	if(!_funcptr_glGetnHistogramARB) ++numFailed;
	_funcptr_glGetnMapdvARB = (PFNGLGETNMAPDVARBPROC)FUNC0("glGetnMapdvARB");
	if(!_funcptr_glGetnMapdvARB) ++numFailed;
	_funcptr_glGetnMapfvARB = (PFNGLGETNMAPFVARBPROC)FUNC0("glGetnMapfvARB");
	if(!_funcptr_glGetnMapfvARB) ++numFailed;
	_funcptr_glGetnMapivARB = (PFNGLGETNMAPIVARBPROC)FUNC0("glGetnMapivARB");
	if(!_funcptr_glGetnMapivARB) ++numFailed;
	_funcptr_glGetnMinmaxARB = (PFNGLGETNMINMAXARBPROC)FUNC0("glGetnMinmaxARB");
	if(!_funcptr_glGetnMinmaxARB) ++numFailed;
	_funcptr_glGetnPixelMapfvARB = (PFNGLGETNPIXELMAPFVARBPROC)FUNC0("glGetnPixelMapfvARB");
	if(!_funcptr_glGetnPixelMapfvARB) ++numFailed;
	_funcptr_glGetnPixelMapuivARB = (PFNGLGETNPIXELMAPUIVARBPROC)FUNC0("glGetnPixelMapuivARB");
	if(!_funcptr_glGetnPixelMapuivARB) ++numFailed;
	_funcptr_glGetnPixelMapusvARB = (PFNGLGETNPIXELMAPUSVARBPROC)FUNC0("glGetnPixelMapusvARB");
	if(!_funcptr_glGetnPixelMapusvARB) ++numFailed;
	_funcptr_glGetnPolygonStippleARB = (PFNGLGETNPOLYGONSTIPPLEARBPROC)FUNC0("glGetnPolygonStippleARB");
	if(!_funcptr_glGetnPolygonStippleARB) ++numFailed;
	_funcptr_glGetnSeparableFilterARB = (PFNGLGETNSEPARABLEFILTERARBPROC)FUNC0("glGetnSeparableFilterARB");
	if(!_funcptr_glGetnSeparableFilterARB) ++numFailed;
	_funcptr_glGetnTexImageARB = (PFNGLGETNTEXIMAGEARBPROC)FUNC0("glGetnTexImageARB");
	if(!_funcptr_glGetnTexImageARB) ++numFailed;
	_funcptr_glGetnUniformdvARB = (PFNGLGETNUNIFORMDVARBPROC)FUNC0("glGetnUniformdvARB");
	if(!_funcptr_glGetnUniformdvARB) ++numFailed;
	_funcptr_glGetnUniformfvARB = (PFNGLGETNUNIFORMFVARBPROC)FUNC0("glGetnUniformfvARB");
	if(!_funcptr_glGetnUniformfvARB) ++numFailed;
	_funcptr_glGetnUniformivARB = (PFNGLGETNUNIFORMIVARBPROC)FUNC0("glGetnUniformivARB");
	if(!_funcptr_glGetnUniformivARB) ++numFailed;
	_funcptr_glGetnUniformuivARB = (PFNGLGETNUNIFORMUIVARBPROC)FUNC0("glGetnUniformuivARB");
	if(!_funcptr_glGetnUniformuivARB) ++numFailed;
	_funcptr_glReadnPixelsARB = (PFNGLREADNPIXELSARBPROC)FUNC0("glReadnPixelsARB");
	if(!_funcptr_glReadnPixelsARB) ++numFailed;
	return numFailed;
}