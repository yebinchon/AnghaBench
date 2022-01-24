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
typedef  scalar_t__ PFNGLOBJECTUNPURGEABLEAPPLEPROC ;
typedef  scalar_t__ PFNGLOBJECTPURGEABLEAPPLEPROC ;
typedef  scalar_t__ PFNGLGETOBJECTPARAMETERIVAPPLEPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetObjectParameterivAPPLE ; 
 scalar_t__ _funcptr_glObjectPurgeableAPPLE ; 
 scalar_t__ _funcptr_glObjectUnpurgeableAPPLE ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetObjectParameterivAPPLE = (PFNGLGETOBJECTPARAMETERIVAPPLEPROC)FUNC0("glGetObjectParameterivAPPLE");
	if(!_funcptr_glGetObjectParameterivAPPLE) ++numFailed;
	_funcptr_glObjectPurgeableAPPLE = (PFNGLOBJECTPURGEABLEAPPLEPROC)FUNC0("glObjectPurgeableAPPLE");
	if(!_funcptr_glObjectPurgeableAPPLE) ++numFailed;
	_funcptr_glObjectUnpurgeableAPPLE = (PFNGLOBJECTUNPURGEABLEAPPLEPROC)FUNC0("glObjectUnpurgeableAPPLE");
	if(!_funcptr_glObjectUnpurgeableAPPLE) ++numFailed;
	return numFailed;
}