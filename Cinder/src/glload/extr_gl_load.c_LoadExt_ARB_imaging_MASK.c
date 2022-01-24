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
typedef  scalar_t__ PFNGLSEPARABLEFILTER2DPROC ;
typedef  scalar_t__ PFNGLRESETMINMAXPROC ;
typedef  scalar_t__ PFNGLRESETHISTOGRAMPROC ;
typedef  scalar_t__ PFNGLMINMAXPROC ;
typedef  scalar_t__ PFNGLHISTOGRAMPROC ;
typedef  scalar_t__ PFNGLGETSEPARABLEFILTERPROC ;
typedef  scalar_t__ PFNGLGETMINMAXPROC ;
typedef  scalar_t__ PFNGLGETMINMAXPARAMETERIVPROC ;
typedef  scalar_t__ PFNGLGETMINMAXPARAMETERFVPROC ;
typedef  scalar_t__ PFNGLGETHISTOGRAMPROC ;
typedef  scalar_t__ PFNGLGETHISTOGRAMPARAMETERIVPROC ;
typedef  scalar_t__ PFNGLGETHISTOGRAMPARAMETERFVPROC ;
typedef  scalar_t__ PFNGLGETCONVOLUTIONPARAMETERIVPROC ;
typedef  scalar_t__ PFNGLGETCONVOLUTIONPARAMETERFVPROC ;
typedef  scalar_t__ PFNGLGETCONVOLUTIONFILTERPROC ;
typedef  scalar_t__ PFNGLGETCOLORTABLEPROC ;
typedef  scalar_t__ PFNGLGETCOLORTABLEPARAMETERIVPROC ;
typedef  scalar_t__ PFNGLGETCOLORTABLEPARAMETERFVPROC ;
typedef  scalar_t__ PFNGLCOPYCONVOLUTIONFILTER2DPROC ;
typedef  scalar_t__ PFNGLCOPYCONVOLUTIONFILTER1DPROC ;
typedef  scalar_t__ PFNGLCOPYCOLORTABLEPROC ;
typedef  scalar_t__ PFNGLCOPYCOLORSUBTABLEPROC ;
typedef  scalar_t__ PFNGLCONVOLUTIONPARAMETERIVPROC ;
typedef  scalar_t__ PFNGLCONVOLUTIONPARAMETERIPROC ;
typedef  scalar_t__ PFNGLCONVOLUTIONPARAMETERFVPROC ;
typedef  scalar_t__ PFNGLCONVOLUTIONPARAMETERFPROC ;
typedef  scalar_t__ PFNGLCONVOLUTIONFILTER2DPROC ;
typedef  scalar_t__ PFNGLCONVOLUTIONFILTER1DPROC ;
typedef  scalar_t__ PFNGLCOLORTABLEPROC ;
typedef  scalar_t__ PFNGLCOLORTABLEPARAMETERIVPROC ;
typedef  scalar_t__ PFNGLCOLORTABLEPARAMETERFVPROC ;
typedef  scalar_t__ PFNGLCOLORSUBTABLEPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glColorSubTable ; 
 scalar_t__ _funcptr_glColorTable ; 
 scalar_t__ _funcptr_glColorTableParameterfv ; 
 scalar_t__ _funcptr_glColorTableParameteriv ; 
 scalar_t__ _funcptr_glConvolutionFilter1D ; 
 scalar_t__ _funcptr_glConvolutionFilter2D ; 
 scalar_t__ _funcptr_glConvolutionParameterf ; 
 scalar_t__ _funcptr_glConvolutionParameterfv ; 
 scalar_t__ _funcptr_glConvolutionParameteri ; 
 scalar_t__ _funcptr_glConvolutionParameteriv ; 
 scalar_t__ _funcptr_glCopyColorSubTable ; 
 scalar_t__ _funcptr_glCopyColorTable ; 
 scalar_t__ _funcptr_glCopyConvolutionFilter1D ; 
 scalar_t__ _funcptr_glCopyConvolutionFilter2D ; 
 scalar_t__ _funcptr_glGetColorTable ; 
 scalar_t__ _funcptr_glGetColorTableParameterfv ; 
 scalar_t__ _funcptr_glGetColorTableParameteriv ; 
 scalar_t__ _funcptr_glGetConvolutionFilter ; 
 scalar_t__ _funcptr_glGetConvolutionParameterfv ; 
 scalar_t__ _funcptr_glGetConvolutionParameteriv ; 
 scalar_t__ _funcptr_glGetHistogram ; 
 scalar_t__ _funcptr_glGetHistogramParameterfv ; 
 scalar_t__ _funcptr_glGetHistogramParameteriv ; 
 scalar_t__ _funcptr_glGetMinmax ; 
 scalar_t__ _funcptr_glGetMinmaxParameterfv ; 
 scalar_t__ _funcptr_glGetMinmaxParameteriv ; 
 scalar_t__ _funcptr_glGetSeparableFilter ; 
 scalar_t__ _funcptr_glHistogram ; 
 scalar_t__ _funcptr_glMinmax ; 
 scalar_t__ _funcptr_glResetHistogram ; 
 scalar_t__ _funcptr_glResetMinmax ; 
 scalar_t__ _funcptr_glSeparableFilter2D ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glColorSubTable = (PFNGLCOLORSUBTABLEPROC)FUNC0("glColorSubTable");
	if(!_funcptr_glColorSubTable) ++numFailed;
	_funcptr_glColorTable = (PFNGLCOLORTABLEPROC)FUNC0("glColorTable");
	if(!_funcptr_glColorTable) ++numFailed;
	_funcptr_glColorTableParameterfv = (PFNGLCOLORTABLEPARAMETERFVPROC)FUNC0("glColorTableParameterfv");
	if(!_funcptr_glColorTableParameterfv) ++numFailed;
	_funcptr_glColorTableParameteriv = (PFNGLCOLORTABLEPARAMETERIVPROC)FUNC0("glColorTableParameteriv");
	if(!_funcptr_glColorTableParameteriv) ++numFailed;
	_funcptr_glConvolutionFilter1D = (PFNGLCONVOLUTIONFILTER1DPROC)FUNC0("glConvolutionFilter1D");
	if(!_funcptr_glConvolutionFilter1D) ++numFailed;
	_funcptr_glConvolutionFilter2D = (PFNGLCONVOLUTIONFILTER2DPROC)FUNC0("glConvolutionFilter2D");
	if(!_funcptr_glConvolutionFilter2D) ++numFailed;
	_funcptr_glConvolutionParameterf = (PFNGLCONVOLUTIONPARAMETERFPROC)FUNC0("glConvolutionParameterf");
	if(!_funcptr_glConvolutionParameterf) ++numFailed;
	_funcptr_glConvolutionParameterfv = (PFNGLCONVOLUTIONPARAMETERFVPROC)FUNC0("glConvolutionParameterfv");
	if(!_funcptr_glConvolutionParameterfv) ++numFailed;
	_funcptr_glConvolutionParameteri = (PFNGLCONVOLUTIONPARAMETERIPROC)FUNC0("glConvolutionParameteri");
	if(!_funcptr_glConvolutionParameteri) ++numFailed;
	_funcptr_glConvolutionParameteriv = (PFNGLCONVOLUTIONPARAMETERIVPROC)FUNC0("glConvolutionParameteriv");
	if(!_funcptr_glConvolutionParameteriv) ++numFailed;
	_funcptr_glCopyColorSubTable = (PFNGLCOPYCOLORSUBTABLEPROC)FUNC0("glCopyColorSubTable");
	if(!_funcptr_glCopyColorSubTable) ++numFailed;
	_funcptr_glCopyColorTable = (PFNGLCOPYCOLORTABLEPROC)FUNC0("glCopyColorTable");
	if(!_funcptr_glCopyColorTable) ++numFailed;
	_funcptr_glCopyConvolutionFilter1D = (PFNGLCOPYCONVOLUTIONFILTER1DPROC)FUNC0("glCopyConvolutionFilter1D");
	if(!_funcptr_glCopyConvolutionFilter1D) ++numFailed;
	_funcptr_glCopyConvolutionFilter2D = (PFNGLCOPYCONVOLUTIONFILTER2DPROC)FUNC0("glCopyConvolutionFilter2D");
	if(!_funcptr_glCopyConvolutionFilter2D) ++numFailed;
	_funcptr_glGetColorTable = (PFNGLGETCOLORTABLEPROC)FUNC0("glGetColorTable");
	if(!_funcptr_glGetColorTable) ++numFailed;
	_funcptr_glGetColorTableParameterfv = (PFNGLGETCOLORTABLEPARAMETERFVPROC)FUNC0("glGetColorTableParameterfv");
	if(!_funcptr_glGetColorTableParameterfv) ++numFailed;
	_funcptr_glGetColorTableParameteriv = (PFNGLGETCOLORTABLEPARAMETERIVPROC)FUNC0("glGetColorTableParameteriv");
	if(!_funcptr_glGetColorTableParameteriv) ++numFailed;
	_funcptr_glGetConvolutionFilter = (PFNGLGETCONVOLUTIONFILTERPROC)FUNC0("glGetConvolutionFilter");
	if(!_funcptr_glGetConvolutionFilter) ++numFailed;
	_funcptr_glGetConvolutionParameterfv = (PFNGLGETCONVOLUTIONPARAMETERFVPROC)FUNC0("glGetConvolutionParameterfv");
	if(!_funcptr_glGetConvolutionParameterfv) ++numFailed;
	_funcptr_glGetConvolutionParameteriv = (PFNGLGETCONVOLUTIONPARAMETERIVPROC)FUNC0("glGetConvolutionParameteriv");
	if(!_funcptr_glGetConvolutionParameteriv) ++numFailed;
	_funcptr_glGetHistogram = (PFNGLGETHISTOGRAMPROC)FUNC0("glGetHistogram");
	if(!_funcptr_glGetHistogram) ++numFailed;
	_funcptr_glGetHistogramParameterfv = (PFNGLGETHISTOGRAMPARAMETERFVPROC)FUNC0("glGetHistogramParameterfv");
	if(!_funcptr_glGetHistogramParameterfv) ++numFailed;
	_funcptr_glGetHistogramParameteriv = (PFNGLGETHISTOGRAMPARAMETERIVPROC)FUNC0("glGetHistogramParameteriv");
	if(!_funcptr_glGetHistogramParameteriv) ++numFailed;
	_funcptr_glGetMinmax = (PFNGLGETMINMAXPROC)FUNC0("glGetMinmax");
	if(!_funcptr_glGetMinmax) ++numFailed;
	_funcptr_glGetMinmaxParameterfv = (PFNGLGETMINMAXPARAMETERFVPROC)FUNC0("glGetMinmaxParameterfv");
	if(!_funcptr_glGetMinmaxParameterfv) ++numFailed;
	_funcptr_glGetMinmaxParameteriv = (PFNGLGETMINMAXPARAMETERIVPROC)FUNC0("glGetMinmaxParameteriv");
	if(!_funcptr_glGetMinmaxParameteriv) ++numFailed;
	_funcptr_glGetSeparableFilter = (PFNGLGETSEPARABLEFILTERPROC)FUNC0("glGetSeparableFilter");
	if(!_funcptr_glGetSeparableFilter) ++numFailed;
	_funcptr_glHistogram = (PFNGLHISTOGRAMPROC)FUNC0("glHistogram");
	if(!_funcptr_glHistogram) ++numFailed;
	_funcptr_glMinmax = (PFNGLMINMAXPROC)FUNC0("glMinmax");
	if(!_funcptr_glMinmax) ++numFailed;
	_funcptr_glResetHistogram = (PFNGLRESETHISTOGRAMPROC)FUNC0("glResetHistogram");
	if(!_funcptr_glResetHistogram) ++numFailed;
	_funcptr_glResetMinmax = (PFNGLRESETMINMAXPROC)FUNC0("glResetMinmax");
	if(!_funcptr_glResetMinmax) ++numFailed;
	_funcptr_glSeparableFilter2D = (PFNGLSEPARABLEFILTER2DPROC)FUNC0("glSeparableFilter2D");
	if(!_funcptr_glSeparableFilter2D) ++numFailed;
	return numFailed;
}