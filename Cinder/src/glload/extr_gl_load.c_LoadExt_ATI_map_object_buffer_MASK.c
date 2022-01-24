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
typedef  scalar_t__ PFNGLUNMAPOBJECTBUFFERATIPROC ;
typedef  scalar_t__ PFNGLMAPOBJECTBUFFERATIPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glMapObjectBufferATI ; 
 scalar_t__ _funcptr_glUnmapObjectBufferATI ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glMapObjectBufferATI = (PFNGLMAPOBJECTBUFFERATIPROC)FUNC0("glMapObjectBufferATI");
	if(!_funcptr_glMapObjectBufferATI) ++numFailed;
	_funcptr_glUnmapObjectBufferATI = (PFNGLUNMAPOBJECTBUFFERATIPROC)FUNC0("glUnmapObjectBufferATI");
	if(!_funcptr_glUnmapObjectBufferATI) ++numFailed;
	return numFailed;
}