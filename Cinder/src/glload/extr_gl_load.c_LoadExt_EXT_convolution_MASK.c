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
typedef  scalar_t__ PFNGLSEPARABLEFILTER2DEXTPROC ;
typedef  scalar_t__ PFNGLGETSEPARABLEFILTEREXTPROC ;
typedef  scalar_t__ PFNGLGETCONVOLUTIONPARAMETERIVEXTPROC ;
typedef  scalar_t__ PFNGLGETCONVOLUTIONPARAMETERFVEXTPROC ;
typedef  scalar_t__ PFNGLGETCONVOLUTIONFILTEREXTPROC ;
typedef  scalar_t__ PFNGLCOPYCONVOLUTIONFILTER2DEXTPROC ;
typedef  scalar_t__ PFNGLCOPYCONVOLUTIONFILTER1DEXTPROC ;
typedef  scalar_t__ PFNGLCONVOLUTIONPARAMETERIVEXTPROC ;
typedef  scalar_t__ PFNGLCONVOLUTIONPARAMETERIEXTPROC ;
typedef  scalar_t__ PFNGLCONVOLUTIONPARAMETERFVEXTPROC ;
typedef  scalar_t__ PFNGLCONVOLUTIONPARAMETERFEXTPROC ;
typedef  scalar_t__ PFNGLCONVOLUTIONFILTER2DEXTPROC ;
typedef  scalar_t__ PFNGLCONVOLUTIONFILTER1DEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glConvolutionFilter1DEXT ; 
 scalar_t__ _funcptr_glConvolutionFilter2DEXT ; 
 scalar_t__ _funcptr_glConvolutionParameterfEXT ; 
 scalar_t__ _funcptr_glConvolutionParameterfvEXT ; 
 scalar_t__ _funcptr_glConvolutionParameteriEXT ; 
 scalar_t__ _funcptr_glConvolutionParameterivEXT ; 
 scalar_t__ _funcptr_glCopyConvolutionFilter1DEXT ; 
 scalar_t__ _funcptr_glCopyConvolutionFilter2DEXT ; 
 scalar_t__ _funcptr_glGetConvolutionFilterEXT ; 
 scalar_t__ _funcptr_glGetConvolutionParameterfvEXT ; 
 scalar_t__ _funcptr_glGetConvolutionParameterivEXT ; 
 scalar_t__ _funcptr_glGetSeparableFilterEXT ; 
 scalar_t__ _funcptr_glSeparableFilter2DEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glConvolutionFilter1DEXT = (PFNGLCONVOLUTIONFILTER1DEXTPROC)FUNC0("glConvolutionFilter1DEXT");
	if(!_funcptr_glConvolutionFilter1DEXT) ++numFailed;
	_funcptr_glConvolutionFilter2DEXT = (PFNGLCONVOLUTIONFILTER2DEXTPROC)FUNC0("glConvolutionFilter2DEXT");
	if(!_funcptr_glConvolutionFilter2DEXT) ++numFailed;
	_funcptr_glConvolutionParameterfEXT = (PFNGLCONVOLUTIONPARAMETERFEXTPROC)FUNC0("glConvolutionParameterfEXT");
	if(!_funcptr_glConvolutionParameterfEXT) ++numFailed;
	_funcptr_glConvolutionParameterfvEXT = (PFNGLCONVOLUTIONPARAMETERFVEXTPROC)FUNC0("glConvolutionParameterfvEXT");
	if(!_funcptr_glConvolutionParameterfvEXT) ++numFailed;
	_funcptr_glConvolutionParameteriEXT = (PFNGLCONVOLUTIONPARAMETERIEXTPROC)FUNC0("glConvolutionParameteriEXT");
	if(!_funcptr_glConvolutionParameteriEXT) ++numFailed;
	_funcptr_glConvolutionParameterivEXT = (PFNGLCONVOLUTIONPARAMETERIVEXTPROC)FUNC0("glConvolutionParameterivEXT");
	if(!_funcptr_glConvolutionParameterivEXT) ++numFailed;
	_funcptr_glCopyConvolutionFilter1DEXT = (PFNGLCOPYCONVOLUTIONFILTER1DEXTPROC)FUNC0("glCopyConvolutionFilter1DEXT");
	if(!_funcptr_glCopyConvolutionFilter1DEXT) ++numFailed;
	_funcptr_glCopyConvolutionFilter2DEXT = (PFNGLCOPYCONVOLUTIONFILTER2DEXTPROC)FUNC0("glCopyConvolutionFilter2DEXT");
	if(!_funcptr_glCopyConvolutionFilter2DEXT) ++numFailed;
	_funcptr_glGetConvolutionFilterEXT = (PFNGLGETCONVOLUTIONFILTEREXTPROC)FUNC0("glGetConvolutionFilterEXT");
	if(!_funcptr_glGetConvolutionFilterEXT) ++numFailed;
	_funcptr_glGetConvolutionParameterfvEXT = (PFNGLGETCONVOLUTIONPARAMETERFVEXTPROC)FUNC0("glGetConvolutionParameterfvEXT");
	if(!_funcptr_glGetConvolutionParameterfvEXT) ++numFailed;
	_funcptr_glGetConvolutionParameterivEXT = (PFNGLGETCONVOLUTIONPARAMETERIVEXTPROC)FUNC0("glGetConvolutionParameterivEXT");
	if(!_funcptr_glGetConvolutionParameterivEXT) ++numFailed;
	_funcptr_glGetSeparableFilterEXT = (PFNGLGETSEPARABLEFILTEREXTPROC)FUNC0("glGetSeparableFilterEXT");
	if(!_funcptr_glGetSeparableFilterEXT) ++numFailed;
	_funcptr_glSeparableFilter2DEXT = (PFNGLSEPARABLEFILTER2DEXTPROC)FUNC0("glSeparableFilter2DEXT");
	if(!_funcptr_glSeparableFilter2DEXT) ++numFailed;
	return numFailed;
}