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
typedef  scalar_t__ PFNGLXQUERYMAXSWAPBARRIERSSGIXPROC ;
typedef  scalar_t__ PFNGLXBINDSWAPBARRIERSGIXPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glXBindSwapBarrierSGIX ; 
 scalar_t__ _funcptr_glXQueryMaxSwapBarriersSGIX ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glXBindSwapBarrierSGIX = (PFNGLXBINDSWAPBARRIERSGIXPROC)FUNC0("glXBindSwapBarrierSGIX");
	if(!_funcptr_glXBindSwapBarrierSGIX) ++numFailed;
	_funcptr_glXQueryMaxSwapBarriersSGIX = (PFNGLXQUERYMAXSWAPBARRIERSSGIXPROC)FUNC0("glXQueryMaxSwapBarriersSGIX");
	if(!_funcptr_glXQueryMaxSwapBarriersSGIX) ++numFailed;
	return numFailed;
}