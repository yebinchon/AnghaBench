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
typedef  scalar_t__ PFNGLGETCOMPRESSEDTEXIMAGEARBPROC ;
typedef  scalar_t__ PFNGLCOMPRESSEDTEXSUBIMAGE3DARBPROC ;
typedef  scalar_t__ PFNGLCOMPRESSEDTEXSUBIMAGE2DARBPROC ;
typedef  scalar_t__ PFNGLCOMPRESSEDTEXSUBIMAGE1DARBPROC ;
typedef  scalar_t__ PFNGLCOMPRESSEDTEXIMAGE3DARBPROC ;
typedef  scalar_t__ PFNGLCOMPRESSEDTEXIMAGE2DARBPROC ;
typedef  scalar_t__ PFNGLCOMPRESSEDTEXIMAGE1DARBPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glCompressedTexImage1DARB ; 
 scalar_t__ _funcptr_glCompressedTexImage2DARB ; 
 scalar_t__ _funcptr_glCompressedTexImage3DARB ; 
 scalar_t__ _funcptr_glCompressedTexSubImage1DARB ; 
 scalar_t__ _funcptr_glCompressedTexSubImage2DARB ; 
 scalar_t__ _funcptr_glCompressedTexSubImage3DARB ; 
 scalar_t__ _funcptr_glGetCompressedTexImageARB ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glCompressedTexImage1DARB = (PFNGLCOMPRESSEDTEXIMAGE1DARBPROC)FUNC0("glCompressedTexImage1DARB");
	if(!_funcptr_glCompressedTexImage1DARB) ++numFailed;
	_funcptr_glCompressedTexImage2DARB = (PFNGLCOMPRESSEDTEXIMAGE2DARBPROC)FUNC0("glCompressedTexImage2DARB");
	if(!_funcptr_glCompressedTexImage2DARB) ++numFailed;
	_funcptr_glCompressedTexImage3DARB = (PFNGLCOMPRESSEDTEXIMAGE3DARBPROC)FUNC0("glCompressedTexImage3DARB");
	if(!_funcptr_glCompressedTexImage3DARB) ++numFailed;
	_funcptr_glCompressedTexSubImage1DARB = (PFNGLCOMPRESSEDTEXSUBIMAGE1DARBPROC)FUNC0("glCompressedTexSubImage1DARB");
	if(!_funcptr_glCompressedTexSubImage1DARB) ++numFailed;
	_funcptr_glCompressedTexSubImage2DARB = (PFNGLCOMPRESSEDTEXSUBIMAGE2DARBPROC)FUNC0("glCompressedTexSubImage2DARB");
	if(!_funcptr_glCompressedTexSubImage2DARB) ++numFailed;
	_funcptr_glCompressedTexSubImage3DARB = (PFNGLCOMPRESSEDTEXSUBIMAGE3DARBPROC)FUNC0("glCompressedTexSubImage3DARB");
	if(!_funcptr_glCompressedTexSubImage3DARB) ++numFailed;
	_funcptr_glGetCompressedTexImageARB = (PFNGLGETCOMPRESSEDTEXIMAGEARBPROC)FUNC0("glGetCompressedTexImageARB");
	if(!_funcptr_glGetCompressedTexImageARB) ++numFailed;
	return numFailed;
}