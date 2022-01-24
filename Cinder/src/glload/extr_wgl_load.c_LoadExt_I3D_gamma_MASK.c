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
typedef  scalar_t__ PFNWGLSETGAMMATABLEPARAMETERSI3DPROC ;
typedef  scalar_t__ PFNWGLSETGAMMATABLEI3DPROC ;
typedef  scalar_t__ PFNWGLGETGAMMATABLEPARAMETERSI3DPROC ;
typedef  scalar_t__ PFNWGLGETGAMMATABLEI3DPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_wglGetGammaTableI3D ; 
 scalar_t__ _funcptr_wglGetGammaTableParametersI3D ; 
 scalar_t__ _funcptr_wglSetGammaTableI3D ; 
 scalar_t__ _funcptr_wglSetGammaTableParametersI3D ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_wglGetGammaTableI3D = (PFNWGLGETGAMMATABLEI3DPROC)FUNC0("wglGetGammaTableI3D");
	if(!_funcptr_wglGetGammaTableI3D) ++numFailed;
	_funcptr_wglGetGammaTableParametersI3D = (PFNWGLGETGAMMATABLEPARAMETERSI3DPROC)FUNC0("wglGetGammaTableParametersI3D");
	if(!_funcptr_wglGetGammaTableParametersI3D) ++numFailed;
	_funcptr_wglSetGammaTableI3D = (PFNWGLSETGAMMATABLEI3DPROC)FUNC0("wglSetGammaTableI3D");
	if(!_funcptr_wglSetGammaTableI3D) ++numFailed;
	_funcptr_wglSetGammaTableParametersI3D = (PFNWGLSETGAMMATABLEPARAMETERSI3DPROC)FUNC0("wglSetGammaTableParametersI3D");
	if(!_funcptr_wglSetGammaTableParametersI3D) ++numFailed;
	return numFailed;
}