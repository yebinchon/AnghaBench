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
typedef  scalar_t__ PFNGLPNTRIANGLESIATIPROC ;
typedef  scalar_t__ PFNGLPNTRIANGLESFATIPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glPNTrianglesfATI ; 
 scalar_t__ _funcptr_glPNTrianglesiATI ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glPNTrianglesfATI = (PFNGLPNTRIANGLESFATIPROC)FUNC0("glPNTrianglesfATI");
	if(!_funcptr_glPNTrianglesfATI) ++numFailed;
	_funcptr_glPNTrianglesiATI = (PFNGLPNTRIANGLESIATIPROC)FUNC0("glPNTrianglesiATI");
	if(!_funcptr_glPNTrianglesiATI) ++numFailed;
	return numFailed;
}