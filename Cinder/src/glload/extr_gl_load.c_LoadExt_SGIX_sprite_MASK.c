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
typedef  scalar_t__ PFNGLSPRITEPARAMETERIVSGIXPROC ;
typedef  scalar_t__ PFNGLSPRITEPARAMETERISGIXPROC ;
typedef  scalar_t__ PFNGLSPRITEPARAMETERFVSGIXPROC ;
typedef  scalar_t__ PFNGLSPRITEPARAMETERFSGIXPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glSpriteParameterfSGIX ; 
 scalar_t__ _funcptr_glSpriteParameterfvSGIX ; 
 scalar_t__ _funcptr_glSpriteParameteriSGIX ; 
 scalar_t__ _funcptr_glSpriteParameterivSGIX ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glSpriteParameterfSGIX = (PFNGLSPRITEPARAMETERFSGIXPROC)FUNC0("glSpriteParameterfSGIX");
	if(!_funcptr_glSpriteParameterfSGIX) ++numFailed;
	_funcptr_glSpriteParameterfvSGIX = (PFNGLSPRITEPARAMETERFVSGIXPROC)FUNC0("glSpriteParameterfvSGIX");
	if(!_funcptr_glSpriteParameterfvSGIX) ++numFailed;
	_funcptr_glSpriteParameteriSGIX = (PFNGLSPRITEPARAMETERISGIXPROC)FUNC0("glSpriteParameteriSGIX");
	if(!_funcptr_glSpriteParameteriSGIX) ++numFailed;
	_funcptr_glSpriteParameterivSGIX = (PFNGLSPRITEPARAMETERIVSGIXPROC)FUNC0("glSpriteParameterivSGIX");
	if(!_funcptr_glSpriteParameterivSGIX) ++numFailed;
	return numFailed;
}