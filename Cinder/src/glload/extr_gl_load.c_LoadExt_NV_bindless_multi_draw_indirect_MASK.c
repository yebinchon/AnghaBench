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
typedef  scalar_t__ PFNGLMULTIDRAWELEMENTSINDIRECTBINDLESSNVPROC ;
typedef  scalar_t__ PFNGLMULTIDRAWARRAYSINDIRECTBINDLESSNVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glMultiDrawArraysIndirectBindlessNV ; 
 scalar_t__ _funcptr_glMultiDrawElementsIndirectBindlessNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glMultiDrawArraysIndirectBindlessNV = (PFNGLMULTIDRAWARRAYSINDIRECTBINDLESSNVPROC)FUNC0("glMultiDrawArraysIndirectBindlessNV");
	if(!_funcptr_glMultiDrawArraysIndirectBindlessNV) ++numFailed;
	_funcptr_glMultiDrawElementsIndirectBindlessNV = (PFNGLMULTIDRAWELEMENTSINDIRECTBINDLESSNVPROC)FUNC0("glMultiDrawElementsIndirectBindlessNV");
	if(!_funcptr_glMultiDrawElementsIndirectBindlessNV) ++numFailed;
	return numFailed;
}