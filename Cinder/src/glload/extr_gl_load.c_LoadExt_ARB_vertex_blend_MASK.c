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
typedef  scalar_t__ PFNGLWEIGHTUSVARBPROC ;
typedef  scalar_t__ PFNGLWEIGHTUIVARBPROC ;
typedef  scalar_t__ PFNGLWEIGHTUBVARBPROC ;
typedef  scalar_t__ PFNGLWEIGHTSVARBPROC ;
typedef  scalar_t__ PFNGLWEIGHTPOINTERARBPROC ;
typedef  scalar_t__ PFNGLWEIGHTIVARBPROC ;
typedef  scalar_t__ PFNGLWEIGHTFVARBPROC ;
typedef  scalar_t__ PFNGLWEIGHTDVARBPROC ;
typedef  scalar_t__ PFNGLWEIGHTBVARBPROC ;
typedef  scalar_t__ PFNGLVERTEXBLENDARBPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glVertexBlendARB ; 
 scalar_t__ _funcptr_glWeightPointerARB ; 
 scalar_t__ _funcptr_glWeightbvARB ; 
 scalar_t__ _funcptr_glWeightdvARB ; 
 scalar_t__ _funcptr_glWeightfvARB ; 
 scalar_t__ _funcptr_glWeightivARB ; 
 scalar_t__ _funcptr_glWeightsvARB ; 
 scalar_t__ _funcptr_glWeightubvARB ; 
 scalar_t__ _funcptr_glWeightuivARB ; 
 scalar_t__ _funcptr_glWeightusvARB ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glVertexBlendARB = (PFNGLVERTEXBLENDARBPROC)FUNC0("glVertexBlendARB");
	if(!_funcptr_glVertexBlendARB) ++numFailed;
	_funcptr_glWeightPointerARB = (PFNGLWEIGHTPOINTERARBPROC)FUNC0("glWeightPointerARB");
	if(!_funcptr_glWeightPointerARB) ++numFailed;
	_funcptr_glWeightbvARB = (PFNGLWEIGHTBVARBPROC)FUNC0("glWeightbvARB");
	if(!_funcptr_glWeightbvARB) ++numFailed;
	_funcptr_glWeightdvARB = (PFNGLWEIGHTDVARBPROC)FUNC0("glWeightdvARB");
	if(!_funcptr_glWeightdvARB) ++numFailed;
	_funcptr_glWeightfvARB = (PFNGLWEIGHTFVARBPROC)FUNC0("glWeightfvARB");
	if(!_funcptr_glWeightfvARB) ++numFailed;
	_funcptr_glWeightivARB = (PFNGLWEIGHTIVARBPROC)FUNC0("glWeightivARB");
	if(!_funcptr_glWeightivARB) ++numFailed;
	_funcptr_glWeightsvARB = (PFNGLWEIGHTSVARBPROC)FUNC0("glWeightsvARB");
	if(!_funcptr_glWeightsvARB) ++numFailed;
	_funcptr_glWeightubvARB = (PFNGLWEIGHTUBVARBPROC)FUNC0("glWeightubvARB");
	if(!_funcptr_glWeightubvARB) ++numFailed;
	_funcptr_glWeightuivARB = (PFNGLWEIGHTUIVARBPROC)FUNC0("glWeightuivARB");
	if(!_funcptr_glWeightuivARB) ++numFailed;
	_funcptr_glWeightusvARB = (PFNGLWEIGHTUSVARBPROC)FUNC0("glWeightusvARB");
	if(!_funcptr_glWeightusvARB) ++numFailed;
	return numFailed;
}