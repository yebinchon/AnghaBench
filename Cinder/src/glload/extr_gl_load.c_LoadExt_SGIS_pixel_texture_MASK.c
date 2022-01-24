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
typedef  scalar_t__ PFNGLPIXELTEXGENPARAMETERIVSGISPROC ;
typedef  scalar_t__ PFNGLPIXELTEXGENPARAMETERISGISPROC ;
typedef  scalar_t__ PFNGLPIXELTEXGENPARAMETERFVSGISPROC ;
typedef  scalar_t__ PFNGLPIXELTEXGENPARAMETERFSGISPROC ;
typedef  scalar_t__ PFNGLGETPIXELTEXGENPARAMETERIVSGISPROC ;
typedef  scalar_t__ PFNGLGETPIXELTEXGENPARAMETERFVSGISPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glGetPixelTexGenParameterfvSGIS ; 
 scalar_t__ _funcptr_glGetPixelTexGenParameterivSGIS ; 
 scalar_t__ _funcptr_glPixelTexGenParameterfSGIS ; 
 scalar_t__ _funcptr_glPixelTexGenParameterfvSGIS ; 
 scalar_t__ _funcptr_glPixelTexGenParameteriSGIS ; 
 scalar_t__ _funcptr_glPixelTexGenParameterivSGIS ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glGetPixelTexGenParameterfvSGIS = (PFNGLGETPIXELTEXGENPARAMETERFVSGISPROC)FUNC0("glGetPixelTexGenParameterfvSGIS");
	if(!_funcptr_glGetPixelTexGenParameterfvSGIS) ++numFailed;
	_funcptr_glGetPixelTexGenParameterivSGIS = (PFNGLGETPIXELTEXGENPARAMETERIVSGISPROC)FUNC0("glGetPixelTexGenParameterivSGIS");
	if(!_funcptr_glGetPixelTexGenParameterivSGIS) ++numFailed;
	_funcptr_glPixelTexGenParameterfSGIS = (PFNGLPIXELTEXGENPARAMETERFSGISPROC)FUNC0("glPixelTexGenParameterfSGIS");
	if(!_funcptr_glPixelTexGenParameterfSGIS) ++numFailed;
	_funcptr_glPixelTexGenParameterfvSGIS = (PFNGLPIXELTEXGENPARAMETERFVSGISPROC)FUNC0("glPixelTexGenParameterfvSGIS");
	if(!_funcptr_glPixelTexGenParameterfvSGIS) ++numFailed;
	_funcptr_glPixelTexGenParameteriSGIS = (PFNGLPIXELTEXGENPARAMETERISGISPROC)FUNC0("glPixelTexGenParameteriSGIS");
	if(!_funcptr_glPixelTexGenParameteriSGIS) ++numFailed;
	_funcptr_glPixelTexGenParameterivSGIS = (PFNGLPIXELTEXGENPARAMETERIVSGISPROC)FUNC0("glPixelTexGenParameterivSGIS");
	if(!_funcptr_glPixelTexGenParameterivSGIS) ++numFailed;
	return numFailed;
}