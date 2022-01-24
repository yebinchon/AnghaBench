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
typedef  scalar_t__ PFNGLDISPATCHCOMPUTEPROC ;
typedef  scalar_t__ PFNGLDISPATCHCOMPUTEINDIRECTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glDispatchCompute ; 
 scalar_t__ _funcptr_glDispatchComputeIndirect ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glDispatchCompute = (PFNGLDISPATCHCOMPUTEPROC)FUNC0("glDispatchCompute");
	if(!_funcptr_glDispatchCompute) ++numFailed;
	_funcptr_glDispatchComputeIndirect = (PFNGLDISPATCHCOMPUTEINDIRECTPROC)FUNC0("glDispatchComputeIndirect");
	if(!_funcptr_glDispatchComputeIndirect) ++numFailed;
	return numFailed;
}