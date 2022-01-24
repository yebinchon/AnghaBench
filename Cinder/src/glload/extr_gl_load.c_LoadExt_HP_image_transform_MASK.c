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
typedef  scalar_t__ PFNGLIMAGETRANSFORMPARAMETERIVHPPROC ;
typedef  scalar_t__ PFNGLIMAGETRANSFORMPARAMETERIHPPROC ;
typedef  scalar_t__ PFNGLIMAGETRANSFORMPARAMETERFVHPPROC ;
typedef  scalar_t__ PFNGLIMAGETRANSFORMPARAMETERFHPPROC ;
typedef  scalar_t__ PFNGLGETIMAGETRANSFORMPARAMETERIVHPPROC ;
typedef  scalar_t__ PFNGLGETIMAGETRANSFORMPARAMETERFVHPPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetImageTransformParameterfvHP ; 
 scalar_t__ _funcptr_glGetImageTransformParameterivHP ; 
 scalar_t__ _funcptr_glImageTransformParameterfHP ; 
 scalar_t__ _funcptr_glImageTransformParameterfvHP ; 
 scalar_t__ _funcptr_glImageTransformParameteriHP ; 
 scalar_t__ _funcptr_glImageTransformParameterivHP ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetImageTransformParameterfvHP = (PFNGLGETIMAGETRANSFORMPARAMETERFVHPPROC)FUNC0("glGetImageTransformParameterfvHP");
	if(!_funcptr_glGetImageTransformParameterfvHP) ++numFailed;
	_funcptr_glGetImageTransformParameterivHP = (PFNGLGETIMAGETRANSFORMPARAMETERIVHPPROC)FUNC0("glGetImageTransformParameterivHP");
	if(!_funcptr_glGetImageTransformParameterivHP) ++numFailed;
	_funcptr_glImageTransformParameterfHP = (PFNGLIMAGETRANSFORMPARAMETERFHPPROC)FUNC0("glImageTransformParameterfHP");
	if(!_funcptr_glImageTransformParameterfHP) ++numFailed;
	_funcptr_glImageTransformParameterfvHP = (PFNGLIMAGETRANSFORMPARAMETERFVHPPROC)FUNC0("glImageTransformParameterfvHP");
	if(!_funcptr_glImageTransformParameterfvHP) ++numFailed;
	_funcptr_glImageTransformParameteriHP = (PFNGLIMAGETRANSFORMPARAMETERIHPPROC)FUNC0("glImageTransformParameteriHP");
	if(!_funcptr_glImageTransformParameteriHP) ++numFailed;
	_funcptr_glImageTransformParameterivHP = (PFNGLIMAGETRANSFORMPARAMETERIVHPPROC)FUNC0("glImageTransformParameterivHP");
	if(!_funcptr_glImageTransformParameterivHP) ++numFailed;
	return numFailed;
}