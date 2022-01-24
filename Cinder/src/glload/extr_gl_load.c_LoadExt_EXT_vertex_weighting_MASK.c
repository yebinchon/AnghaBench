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
typedef  scalar_t__ PFNGLVERTEXWEIGHTPOINTEREXTPROC ;
typedef  scalar_t__ PFNGLVERTEXWEIGHTFVEXTPROC ;
typedef  scalar_t__ PFNGLVERTEXWEIGHTFEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glVertexWeightPointerEXT ; 
 scalar_t__ _funcptr_glVertexWeightfEXT ; 
 scalar_t__ _funcptr_glVertexWeightfvEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glVertexWeightPointerEXT = (PFNGLVERTEXWEIGHTPOINTEREXTPROC)FUNC0("glVertexWeightPointerEXT");
	if(!_funcptr_glVertexWeightPointerEXT) ++numFailed;
	_funcptr_glVertexWeightfEXT = (PFNGLVERTEXWEIGHTFEXTPROC)FUNC0("glVertexWeightfEXT");
	if(!_funcptr_glVertexWeightfEXT) ++numFailed;
	_funcptr_glVertexWeightfvEXT = (PFNGLVERTEXWEIGHTFVEXTPROC)FUNC0("glVertexWeightfvEXT");
	if(!_funcptr_glVertexWeightfvEXT) ++numFailed;
	return numFailed;
}