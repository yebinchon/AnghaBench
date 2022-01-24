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
typedef  scalar_t__ PFNGLSTENCILOPSEPARATEATIPROC ;
typedef  scalar_t__ PFNGLSTENCILFUNCSEPARATEATIPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glStencilFuncSeparateATI ; 
 scalar_t__ _funcptr_glStencilOpSeparateATI ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glStencilFuncSeparateATI = (PFNGLSTENCILFUNCSEPARATEATIPROC)FUNC0("glStencilFuncSeparateATI");
	if(!_funcptr_glStencilFuncSeparateATI) ++numFailed;
	_funcptr_glStencilOpSeparateATI = (PFNGLSTENCILOPSEPARATEATIPROC)FUNC0("glStencilOpSeparateATI");
	if(!_funcptr_glStencilOpSeparateATI) ++numFailed;
	return numFailed;
}