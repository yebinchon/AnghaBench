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
typedef  scalar_t__ PFNWGLCOPYIMAGESUBDATANVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_wglCopyImageSubDataNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_wglCopyImageSubDataNV = (PFNWGLCOPYIMAGESUBDATANVPROC)FUNC0("wglCopyImageSubDataNV");
	if(!_funcptr_wglCopyImageSubDataNV) ++numFailed;
	return numFailed;
}