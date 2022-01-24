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
typedef  scalar_t__ PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC ;
typedef  scalar_t__ PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC ;
typedef  scalar_t__ PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC ;
typedef  scalar_t__ PFNGLDRAWELEMENTSBASEVERTEXPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glDrawElementsBaseVertex ; 
 scalar_t__ _funcptr_glDrawElementsInstancedBaseVertex ; 
 scalar_t__ _funcptr_glDrawRangeElementsBaseVertex ; 
 scalar_t__ _funcptr_glMultiDrawElementsBaseVertex ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glDrawElementsBaseVertex = (PFNGLDRAWELEMENTSBASEVERTEXPROC)FUNC0("glDrawElementsBaseVertex");
	if(!_funcptr_glDrawElementsBaseVertex) ++numFailed;
	_funcptr_glDrawElementsInstancedBaseVertex = (PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC)FUNC0("glDrawElementsInstancedBaseVertex");
	if(!_funcptr_glDrawElementsInstancedBaseVertex) ++numFailed;
	_funcptr_glDrawRangeElementsBaseVertex = (PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC)FUNC0("glDrawRangeElementsBaseVertex");
	if(!_funcptr_glDrawRangeElementsBaseVertex) ++numFailed;
	_funcptr_glMultiDrawElementsBaseVertex = (PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC)FUNC0("glMultiDrawElementsBaseVertex");
	if(!_funcptr_glMultiDrawElementsBaseVertex) ++numFailed;
	return numFailed;
}