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
typedef  scalar_t__ PFNWGLSETDIGITALVIDEOPARAMETERSI3DPROC ;
typedef  scalar_t__ PFNWGLGETDIGITALVIDEOPARAMETERSI3DPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_wglGetDigitalVideoParametersI3D ; 
 scalar_t__ _funcptr_wglSetDigitalVideoParametersI3D ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_wglGetDigitalVideoParametersI3D = (PFNWGLGETDIGITALVIDEOPARAMETERSI3DPROC)FUNC0("wglGetDigitalVideoParametersI3D");
	if(!_funcptr_wglGetDigitalVideoParametersI3D) ++numFailed;
	_funcptr_wglSetDigitalVideoParametersI3D = (PFNWGLSETDIGITALVIDEOPARAMETERSI3DPROC)FUNC0("wglSetDigitalVideoParametersI3D");
	if(!_funcptr_wglSetDigitalVideoParametersI3D) ++numFailed;
	return numFailed;
}