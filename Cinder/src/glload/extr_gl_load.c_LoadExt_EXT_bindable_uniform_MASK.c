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
typedef  scalar_t__ PFNGLUNIFORMBUFFEREXTPROC ;
typedef  scalar_t__ PFNGLGETUNIFORMOFFSETEXTPROC ;
typedef  scalar_t__ PFNGLGETUNIFORMBUFFERSIZEEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetUniformBufferSizeEXT ; 
 scalar_t__ _funcptr_glGetUniformOffsetEXT ; 
 scalar_t__ _funcptr_glUniformBufferEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetUniformBufferSizeEXT = (PFNGLGETUNIFORMBUFFERSIZEEXTPROC)FUNC0("glGetUniformBufferSizeEXT");
	if(!_funcptr_glGetUniformBufferSizeEXT) ++numFailed;
	_funcptr_glGetUniformOffsetEXT = (PFNGLGETUNIFORMOFFSETEXTPROC)FUNC0("glGetUniformOffsetEXT");
	if(!_funcptr_glGetUniformOffsetEXT) ++numFailed;
	_funcptr_glUniformBufferEXT = (PFNGLUNIFORMBUFFEREXTPROC)FUNC0("glUniformBufferEXT");
	if(!_funcptr_glUniformBufferEXT) ++numFailed;
	return numFailed;
}