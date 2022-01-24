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
typedef  scalar_t__ PFNGLVDPAUUNREGISTERSURFACENVPROC ;
typedef  scalar_t__ PFNGLVDPAUUNMAPSURFACESNVPROC ;
typedef  scalar_t__ PFNGLVDPAUSURFACEACCESSNVPROC ;
typedef  scalar_t__ PFNGLVDPAUREGISTERVIDEOSURFACENVPROC ;
typedef  scalar_t__ PFNGLVDPAUREGISTEROUTPUTSURFACENVPROC ;
typedef  scalar_t__ PFNGLVDPAUMAPSURFACESNVPROC ;
typedef  scalar_t__ PFNGLVDPAUISSURFACENVPROC ;
typedef  scalar_t__ PFNGLVDPAUINITNVPROC ;
typedef  scalar_t__ PFNGLVDPAUGETSURFACEIVNVPROC ;
typedef  scalar_t__ PFNGLVDPAUFININVPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glVDPAUFiniNV ; 
 scalar_t__ _funcptr_glVDPAUGetSurfaceivNV ; 
 scalar_t__ _funcptr_glVDPAUInitNV ; 
 scalar_t__ _funcptr_glVDPAUIsSurfaceNV ; 
 scalar_t__ _funcptr_glVDPAUMapSurfacesNV ; 
 scalar_t__ _funcptr_glVDPAURegisterOutputSurfaceNV ; 
 scalar_t__ _funcptr_glVDPAURegisterVideoSurfaceNV ; 
 scalar_t__ _funcptr_glVDPAUSurfaceAccessNV ; 
 scalar_t__ _funcptr_glVDPAUUnmapSurfacesNV ; 
 scalar_t__ _funcptr_glVDPAUUnregisterSurfaceNV ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glVDPAUFiniNV = (PFNGLVDPAUFININVPROC)FUNC0("glVDPAUFiniNV");
	if(!_funcptr_glVDPAUFiniNV) ++numFailed;
	_funcptr_glVDPAUGetSurfaceivNV = (PFNGLVDPAUGETSURFACEIVNVPROC)FUNC0("glVDPAUGetSurfaceivNV");
	if(!_funcptr_glVDPAUGetSurfaceivNV) ++numFailed;
	_funcptr_glVDPAUInitNV = (PFNGLVDPAUINITNVPROC)FUNC0("glVDPAUInitNV");
	if(!_funcptr_glVDPAUInitNV) ++numFailed;
	_funcptr_glVDPAUIsSurfaceNV = (PFNGLVDPAUISSURFACENVPROC)FUNC0("glVDPAUIsSurfaceNV");
	if(!_funcptr_glVDPAUIsSurfaceNV) ++numFailed;
	_funcptr_glVDPAUMapSurfacesNV = (PFNGLVDPAUMAPSURFACESNVPROC)FUNC0("glVDPAUMapSurfacesNV");
	if(!_funcptr_glVDPAUMapSurfacesNV) ++numFailed;
	_funcptr_glVDPAURegisterOutputSurfaceNV = (PFNGLVDPAUREGISTEROUTPUTSURFACENVPROC)FUNC0("glVDPAURegisterOutputSurfaceNV");
	if(!_funcptr_glVDPAURegisterOutputSurfaceNV) ++numFailed;
	_funcptr_glVDPAURegisterVideoSurfaceNV = (PFNGLVDPAUREGISTERVIDEOSURFACENVPROC)FUNC0("glVDPAURegisterVideoSurfaceNV");
	if(!_funcptr_glVDPAURegisterVideoSurfaceNV) ++numFailed;
	_funcptr_glVDPAUSurfaceAccessNV = (PFNGLVDPAUSURFACEACCESSNVPROC)FUNC0("glVDPAUSurfaceAccessNV");
	if(!_funcptr_glVDPAUSurfaceAccessNV) ++numFailed;
	_funcptr_glVDPAUUnmapSurfacesNV = (PFNGLVDPAUUNMAPSURFACESNVPROC)FUNC0("glVDPAUUnmapSurfacesNV");
	if(!_funcptr_glVDPAUUnmapSurfacesNV) ++numFailed;
	_funcptr_glVDPAUUnregisterSurfaceNV = (PFNGLVDPAUUNREGISTERSURFACENVPROC)FUNC0("glVDPAUUnregisterSurfaceNV");
	if(!_funcptr_glVDPAUUnregisterSurfaceNV) ++numFailed;
	return numFailed;
}