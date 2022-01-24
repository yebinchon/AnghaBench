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
typedef  scalar_t__ PFNGLPRIORITIZETEXTURESEXTPROC ;
typedef  scalar_t__ PFNGLISTEXTUREEXTPROC ;
typedef  scalar_t__ PFNGLGENTEXTURESEXTPROC ;
typedef  scalar_t__ PFNGLDELETETEXTURESEXTPROC ;
typedef  scalar_t__ PFNGLBINDTEXTUREEXTPROC ;
typedef  scalar_t__ PFNGLARETEXTURESRESIDENTEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glAreTexturesResidentEXT ; 
 scalar_t__ _funcptr_glBindTextureEXT ; 
 scalar_t__ _funcptr_glDeleteTexturesEXT ; 
 scalar_t__ _funcptr_glGenTexturesEXT ; 
 scalar_t__ _funcptr_glIsTextureEXT ; 
 scalar_t__ _funcptr_glPrioritizeTexturesEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glAreTexturesResidentEXT = (PFNGLARETEXTURESRESIDENTEXTPROC)FUNC0("glAreTexturesResidentEXT");
	if(!_funcptr_glAreTexturesResidentEXT) ++numFailed;
	_funcptr_glBindTextureEXT = (PFNGLBINDTEXTUREEXTPROC)FUNC0("glBindTextureEXT");
	if(!_funcptr_glBindTextureEXT) ++numFailed;
	_funcptr_glDeleteTexturesEXT = (PFNGLDELETETEXTURESEXTPROC)FUNC0("glDeleteTexturesEXT");
	if(!_funcptr_glDeleteTexturesEXT) ++numFailed;
	_funcptr_glGenTexturesEXT = (PFNGLGENTEXTURESEXTPROC)FUNC0("glGenTexturesEXT");
	if(!_funcptr_glGenTexturesEXT) ++numFailed;
	_funcptr_glIsTextureEXT = (PFNGLISTEXTUREEXTPROC)FUNC0("glIsTextureEXT");
	if(!_funcptr_glIsTextureEXT) ++numFailed;
	_funcptr_glPrioritizeTexturesEXT = (PFNGLPRIORITIZETEXTURESEXTPROC)FUNC0("glPrioritizeTexturesEXT");
	if(!_funcptr_glPrioritizeTexturesEXT) ++numFailed;
	return numFailed;
}