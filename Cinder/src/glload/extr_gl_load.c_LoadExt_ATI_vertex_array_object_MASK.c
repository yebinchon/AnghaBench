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
typedef  scalar_t__ PFNGLVARIANTARRAYOBJECTATIPROC ;
typedef  scalar_t__ PFNGLUPDATEOBJECTBUFFERATIPROC ;
typedef  scalar_t__ PFNGLNEWOBJECTBUFFERATIPROC ;
typedef  scalar_t__ PFNGLISOBJECTBUFFERATIPROC ;
typedef  scalar_t__ PFNGLGETVARIANTARRAYOBJECTIVATIPROC ;
typedef  scalar_t__ PFNGLGETVARIANTARRAYOBJECTFVATIPROC ;
typedef  scalar_t__ PFNGLGETOBJECTBUFFERIVATIPROC ;
typedef  scalar_t__ PFNGLGETOBJECTBUFFERFVATIPROC ;
typedef  scalar_t__ PFNGLGETARRAYOBJECTIVATIPROC ;
typedef  scalar_t__ PFNGLGETARRAYOBJECTFVATIPROC ;
typedef  scalar_t__ PFNGLFREEOBJECTBUFFERATIPROC ;
typedef  scalar_t__ PFNGLARRAYOBJECTATIPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glArrayObjectATI ; 
 scalar_t__ _funcptr_glFreeObjectBufferATI ; 
 scalar_t__ _funcptr_glGetArrayObjectfvATI ; 
 scalar_t__ _funcptr_glGetArrayObjectivATI ; 
 scalar_t__ _funcptr_glGetObjectBufferfvATI ; 
 scalar_t__ _funcptr_glGetObjectBufferivATI ; 
 scalar_t__ _funcptr_glGetVariantArrayObjectfvATI ; 
 scalar_t__ _funcptr_glGetVariantArrayObjectivATI ; 
 scalar_t__ _funcptr_glIsObjectBufferATI ; 
 scalar_t__ _funcptr_glNewObjectBufferATI ; 
 scalar_t__ _funcptr_glUpdateObjectBufferATI ; 
 scalar_t__ _funcptr_glVariantArrayObjectATI ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glArrayObjectATI = (PFNGLARRAYOBJECTATIPROC)FUNC0("glArrayObjectATI");
	if(!_funcptr_glArrayObjectATI) ++numFailed;
	_funcptr_glFreeObjectBufferATI = (PFNGLFREEOBJECTBUFFERATIPROC)FUNC0("glFreeObjectBufferATI");
	if(!_funcptr_glFreeObjectBufferATI) ++numFailed;
	_funcptr_glGetArrayObjectfvATI = (PFNGLGETARRAYOBJECTFVATIPROC)FUNC0("glGetArrayObjectfvATI");
	if(!_funcptr_glGetArrayObjectfvATI) ++numFailed;
	_funcptr_glGetArrayObjectivATI = (PFNGLGETARRAYOBJECTIVATIPROC)FUNC0("glGetArrayObjectivATI");
	if(!_funcptr_glGetArrayObjectivATI) ++numFailed;
	_funcptr_glGetObjectBufferfvATI = (PFNGLGETOBJECTBUFFERFVATIPROC)FUNC0("glGetObjectBufferfvATI");
	if(!_funcptr_glGetObjectBufferfvATI) ++numFailed;
	_funcptr_glGetObjectBufferivATI = (PFNGLGETOBJECTBUFFERIVATIPROC)FUNC0("glGetObjectBufferivATI");
	if(!_funcptr_glGetObjectBufferivATI) ++numFailed;
	_funcptr_glGetVariantArrayObjectfvATI = (PFNGLGETVARIANTARRAYOBJECTFVATIPROC)FUNC0("glGetVariantArrayObjectfvATI");
	if(!_funcptr_glGetVariantArrayObjectfvATI) ++numFailed;
	_funcptr_glGetVariantArrayObjectivATI = (PFNGLGETVARIANTARRAYOBJECTIVATIPROC)FUNC0("glGetVariantArrayObjectivATI");
	if(!_funcptr_glGetVariantArrayObjectivATI) ++numFailed;
	_funcptr_glIsObjectBufferATI = (PFNGLISOBJECTBUFFERATIPROC)FUNC0("glIsObjectBufferATI");
	if(!_funcptr_glIsObjectBufferATI) ++numFailed;
	_funcptr_glNewObjectBufferATI = (PFNGLNEWOBJECTBUFFERATIPROC)FUNC0("glNewObjectBufferATI");
	if(!_funcptr_glNewObjectBufferATI) ++numFailed;
	_funcptr_glUpdateObjectBufferATI = (PFNGLUPDATEOBJECTBUFFERATIPROC)FUNC0("glUpdateObjectBufferATI");
	if(!_funcptr_glUpdateObjectBufferATI) ++numFailed;
	_funcptr_glVariantArrayObjectATI = (PFNGLVARIANTARRAYOBJECTATIPROC)FUNC0("glVariantArrayObjectATI");
	if(!_funcptr_glVariantArrayObjectATI) ++numFailed;
	return numFailed;
}