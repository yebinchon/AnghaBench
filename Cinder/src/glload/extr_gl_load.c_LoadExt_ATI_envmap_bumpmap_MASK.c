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
typedef  scalar_t__ PFNGLTEXBUMPPARAMETERIVATIPROC ;
typedef  scalar_t__ PFNGLTEXBUMPPARAMETERFVATIPROC ;
typedef  scalar_t__ PFNGLGETTEXBUMPPARAMETERIVATIPROC ;
typedef  scalar_t__ PFNGLGETTEXBUMPPARAMETERFVATIPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetTexBumpParameterfvATI ; 
 scalar_t__ _funcptr_glGetTexBumpParameterivATI ; 
 scalar_t__ _funcptr_glTexBumpParameterfvATI ; 
 scalar_t__ _funcptr_glTexBumpParameterivATI ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetTexBumpParameterfvATI = (PFNGLGETTEXBUMPPARAMETERFVATIPROC)FUNC0("glGetTexBumpParameterfvATI");
	if(!_funcptr_glGetTexBumpParameterfvATI) ++numFailed;
	_funcptr_glGetTexBumpParameterivATI = (PFNGLGETTEXBUMPPARAMETERIVATIPROC)FUNC0("glGetTexBumpParameterivATI");
	if(!_funcptr_glGetTexBumpParameterivATI) ++numFailed;
	_funcptr_glTexBumpParameterfvATI = (PFNGLTEXBUMPPARAMETERFVATIPROC)FUNC0("glTexBumpParameterfvATI");
	if(!_funcptr_glTexBumpParameterfvATI) ++numFailed;
	_funcptr_glTexBumpParameterivATI = (PFNGLTEXBUMPPARAMETERIVATIPROC)FUNC0("glTexBumpParameterivATI");
	if(!_funcptr_glTexBumpParameterivATI) ++numFailed;
	return numFailed;
}