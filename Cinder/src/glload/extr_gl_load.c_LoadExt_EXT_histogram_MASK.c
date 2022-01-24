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
typedef  scalar_t__ PFNGLRESETMINMAXEXTPROC ;
typedef  scalar_t__ PFNGLRESETHISTOGRAMEXTPROC ;
typedef  scalar_t__ PFNGLMINMAXEXTPROC ;
typedef  scalar_t__ PFNGLHISTOGRAMEXTPROC ;
typedef  scalar_t__ PFNGLGETMINMAXPARAMETERIVEXTPROC ;
typedef  scalar_t__ PFNGLGETMINMAXPARAMETERFVEXTPROC ;
typedef  scalar_t__ PFNGLGETMINMAXEXTPROC ;
typedef  scalar_t__ PFNGLGETHISTOGRAMPARAMETERIVEXTPROC ;
typedef  scalar_t__ PFNGLGETHISTOGRAMPARAMETERFVEXTPROC ;
typedef  scalar_t__ PFNGLGETHISTOGRAMEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetHistogramEXT ; 
 scalar_t__ _funcptr_glGetHistogramParameterfvEXT ; 
 scalar_t__ _funcptr_glGetHistogramParameterivEXT ; 
 scalar_t__ _funcptr_glGetMinmaxEXT ; 
 scalar_t__ _funcptr_glGetMinmaxParameterfvEXT ; 
 scalar_t__ _funcptr_glGetMinmaxParameterivEXT ; 
 scalar_t__ _funcptr_glHistogramEXT ; 
 scalar_t__ _funcptr_glMinmaxEXT ; 
 scalar_t__ _funcptr_glResetHistogramEXT ; 
 scalar_t__ _funcptr_glResetMinmaxEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetHistogramEXT = (PFNGLGETHISTOGRAMEXTPROC)FUNC0("glGetHistogramEXT");
	if(!_funcptr_glGetHistogramEXT) ++numFailed;
	_funcptr_glGetHistogramParameterfvEXT = (PFNGLGETHISTOGRAMPARAMETERFVEXTPROC)FUNC0("glGetHistogramParameterfvEXT");
	if(!_funcptr_glGetHistogramParameterfvEXT) ++numFailed;
	_funcptr_glGetHistogramParameterivEXT = (PFNGLGETHISTOGRAMPARAMETERIVEXTPROC)FUNC0("glGetHistogramParameterivEXT");
	if(!_funcptr_glGetHistogramParameterivEXT) ++numFailed;
	_funcptr_glGetMinmaxEXT = (PFNGLGETMINMAXEXTPROC)FUNC0("glGetMinmaxEXT");
	if(!_funcptr_glGetMinmaxEXT) ++numFailed;
	_funcptr_glGetMinmaxParameterfvEXT = (PFNGLGETMINMAXPARAMETERFVEXTPROC)FUNC0("glGetMinmaxParameterfvEXT");
	if(!_funcptr_glGetMinmaxParameterfvEXT) ++numFailed;
	_funcptr_glGetMinmaxParameterivEXT = (PFNGLGETMINMAXPARAMETERIVEXTPROC)FUNC0("glGetMinmaxParameterivEXT");
	if(!_funcptr_glGetMinmaxParameterivEXT) ++numFailed;
	_funcptr_glHistogramEXT = (PFNGLHISTOGRAMEXTPROC)FUNC0("glHistogramEXT");
	if(!_funcptr_glHistogramEXT) ++numFailed;
	_funcptr_glMinmaxEXT = (PFNGLMINMAXEXTPROC)FUNC0("glMinmaxEXT");
	if(!_funcptr_glMinmaxEXT) ++numFailed;
	_funcptr_glResetHistogramEXT = (PFNGLRESETHISTOGRAMEXTPROC)FUNC0("glResetHistogramEXT");
	if(!_funcptr_glResetHistogramEXT) ++numFailed;
	_funcptr_glResetMinmaxEXT = (PFNGLRESETMINMAXEXTPROC)FUNC0("glResetMinmaxEXT");
	if(!_funcptr_glResetMinmaxEXT) ++numFailed;
	return numFailed;
}