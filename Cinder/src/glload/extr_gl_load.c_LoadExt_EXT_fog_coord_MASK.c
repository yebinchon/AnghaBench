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
typedef  scalar_t__ PFNGLFOGCOORDPOINTEREXTPROC ;
typedef  scalar_t__ PFNGLFOGCOORDFVEXTPROC ;
typedef  scalar_t__ PFNGLFOGCOORDFEXTPROC ;
typedef  scalar_t__ PFNGLFOGCOORDDVEXTPROC ;
typedef  scalar_t__ PFNGLFOGCOORDDEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glFogCoordPointerEXT ; 
 scalar_t__ _funcptr_glFogCoorddEXT ; 
 scalar_t__ _funcptr_glFogCoorddvEXT ; 
 scalar_t__ _funcptr_glFogCoordfEXT ; 
 scalar_t__ _funcptr_glFogCoordfvEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glFogCoordPointerEXT = (PFNGLFOGCOORDPOINTEREXTPROC)FUNC0("glFogCoordPointerEXT");
	if(!_funcptr_glFogCoordPointerEXT) ++numFailed;
	_funcptr_glFogCoorddEXT = (PFNGLFOGCOORDDEXTPROC)FUNC0("glFogCoorddEXT");
	if(!_funcptr_glFogCoorddEXT) ++numFailed;
	_funcptr_glFogCoorddvEXT = (PFNGLFOGCOORDDVEXTPROC)FUNC0("glFogCoorddvEXT");
	if(!_funcptr_glFogCoorddvEXT) ++numFailed;
	_funcptr_glFogCoordfEXT = (PFNGLFOGCOORDFEXTPROC)FUNC0("glFogCoordfEXT");
	if(!_funcptr_glFogCoordfEXT) ++numFailed;
	_funcptr_glFogCoordfvEXT = (PFNGLFOGCOORDFVEXTPROC)FUNC0("glFogCoordfvEXT");
	if(!_funcptr_glFogCoordfvEXT) ++numFailed;
	return numFailed;
}