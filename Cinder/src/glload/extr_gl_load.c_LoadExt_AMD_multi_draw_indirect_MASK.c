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
typedef  scalar_t__ PFNGLMULTIDRAWELEMENTSINDIRECTAMDPROC ;
typedef  scalar_t__ PFNGLMULTIDRAWARRAYSINDIRECTAMDPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glMultiDrawArraysIndirectAMD ; 
 scalar_t__ _funcptr_glMultiDrawElementsIndirectAMD ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glMultiDrawArraysIndirectAMD = (PFNGLMULTIDRAWARRAYSINDIRECTAMDPROC)FUNC0("glMultiDrawArraysIndirectAMD");
	if(!_funcptr_glMultiDrawArraysIndirectAMD) ++numFailed;
	_funcptr_glMultiDrawElementsIndirectAMD = (PFNGLMULTIDRAWELEMENTSINDIRECTAMDPROC)FUNC0("glMultiDrawElementsIndirectAMD");
	if(!_funcptr_glMultiDrawElementsIndirectAMD) ++numFailed;
	return numFailed;
}