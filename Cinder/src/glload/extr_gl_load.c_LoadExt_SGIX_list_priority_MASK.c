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
typedef  scalar_t__ PFNGLLISTPARAMETERIVSGIXPROC ;
typedef  scalar_t__ PFNGLLISTPARAMETERISGIXPROC ;
typedef  scalar_t__ PFNGLLISTPARAMETERFVSGIXPROC ;
typedef  scalar_t__ PFNGLLISTPARAMETERFSGIXPROC ;
typedef  scalar_t__ PFNGLGETLISTPARAMETERIVSGIXPROC ;
typedef  scalar_t__ PFNGLGETLISTPARAMETERFVSGIXPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetListParameterfvSGIX ; 
 scalar_t__ _funcptr_glGetListParameterivSGIX ; 
 scalar_t__ _funcptr_glListParameterfSGIX ; 
 scalar_t__ _funcptr_glListParameterfvSGIX ; 
 scalar_t__ _funcptr_glListParameteriSGIX ; 
 scalar_t__ _funcptr_glListParameterivSGIX ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetListParameterfvSGIX = (PFNGLGETLISTPARAMETERFVSGIXPROC)FUNC0("glGetListParameterfvSGIX");
	if(!_funcptr_glGetListParameterfvSGIX) ++numFailed;
	_funcptr_glGetListParameterivSGIX = (PFNGLGETLISTPARAMETERIVSGIXPROC)FUNC0("glGetListParameterivSGIX");
	if(!_funcptr_glGetListParameterivSGIX) ++numFailed;
	_funcptr_glListParameterfSGIX = (PFNGLLISTPARAMETERFSGIXPROC)FUNC0("glListParameterfSGIX");
	if(!_funcptr_glListParameterfSGIX) ++numFailed;
	_funcptr_glListParameterfvSGIX = (PFNGLLISTPARAMETERFVSGIXPROC)FUNC0("glListParameterfvSGIX");
	if(!_funcptr_glListParameterfvSGIX) ++numFailed;
	_funcptr_glListParameteriSGIX = (PFNGLLISTPARAMETERISGIXPROC)FUNC0("glListParameteriSGIX");
	if(!_funcptr_glListParameteriSGIX) ++numFailed;
	_funcptr_glListParameterivSGIX = (PFNGLLISTPARAMETERIVSGIXPROC)FUNC0("glListParameterivSGIX");
	if(!_funcptr_glListParameterivSGIX) ++numFailed;
	return numFailed;
}