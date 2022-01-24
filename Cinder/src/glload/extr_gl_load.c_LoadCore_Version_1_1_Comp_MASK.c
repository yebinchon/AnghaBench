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
typedef  scalar_t__ PFNGLVERTEXPOINTERPROC ;
typedef  scalar_t__ PFNGLTEXCOORDPOINTERPROC ;
typedef  scalar_t__ PFNGLPUSHCLIENTATTRIBPROC ;
typedef  scalar_t__ PFNGLPRIORITIZETEXTURESPROC ;
typedef  scalar_t__ PFNGLPOPCLIENTATTRIBPROC ;
typedef  scalar_t__ PFNGLNORMALPOINTERPROC ;
typedef  scalar_t__ PFNGLINTERLEAVEDARRAYSPROC ;
typedef  scalar_t__ PFNGLINDEXUBVPROC ;
typedef  scalar_t__ PFNGLINDEXUBPROC ;
typedef  scalar_t__ PFNGLINDEXPOINTERPROC ;
typedef  scalar_t__ PFNGLENABLECLIENTSTATEPROC ;
typedef  scalar_t__ PFNGLEDGEFLAGPOINTERPROC ;
typedef  scalar_t__ PFNGLDISABLECLIENTSTATEPROC ;
typedef  scalar_t__ PFNGLCOLORPOINTERPROC ;
typedef  scalar_t__ PFNGLARRAYELEMENTPROC ;
typedef  scalar_t__ PFNGLARETEXTURESRESIDENTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glAreTexturesResident ; 
 scalar_t__ _funcptr_glArrayElement ; 
 scalar_t__ _funcptr_glColorPointer ; 
 scalar_t__ _funcptr_glDisableClientState ; 
 scalar_t__ _funcptr_glEdgeFlagPointer ; 
 scalar_t__ _funcptr_glEnableClientState ; 
 scalar_t__ _funcptr_glIndexPointer ; 
 scalar_t__ _funcptr_glIndexub ; 
 scalar_t__ _funcptr_glIndexubv ; 
 scalar_t__ _funcptr_glInterleavedArrays ; 
 scalar_t__ _funcptr_glNormalPointer ; 
 scalar_t__ _funcptr_glPopClientAttrib ; 
 scalar_t__ _funcptr_glPrioritizeTextures ; 
 scalar_t__ _funcptr_glPushClientAttrib ; 
 scalar_t__ _funcptr_glTexCoordPointer ; 
 scalar_t__ _funcptr_glVertexPointer ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glAreTexturesResident = (PFNGLARETEXTURESRESIDENTPROC)FUNC0("glAreTexturesResident");
	if(!_funcptr_glAreTexturesResident) ++numFailed;
	_funcptr_glArrayElement = (PFNGLARRAYELEMENTPROC)FUNC0("glArrayElement");
	if(!_funcptr_glArrayElement) ++numFailed;
	_funcptr_glColorPointer = (PFNGLCOLORPOINTERPROC)FUNC0("glColorPointer");
	if(!_funcptr_glColorPointer) ++numFailed;
	_funcptr_glDisableClientState = (PFNGLDISABLECLIENTSTATEPROC)FUNC0("glDisableClientState");
	if(!_funcptr_glDisableClientState) ++numFailed;
	_funcptr_glEdgeFlagPointer = (PFNGLEDGEFLAGPOINTERPROC)FUNC0("glEdgeFlagPointer");
	if(!_funcptr_glEdgeFlagPointer) ++numFailed;
	_funcptr_glEnableClientState = (PFNGLENABLECLIENTSTATEPROC)FUNC0("glEnableClientState");
	if(!_funcptr_glEnableClientState) ++numFailed;
	_funcptr_glIndexPointer = (PFNGLINDEXPOINTERPROC)FUNC0("glIndexPointer");
	if(!_funcptr_glIndexPointer) ++numFailed;
	_funcptr_glIndexub = (PFNGLINDEXUBPROC)FUNC0("glIndexub");
	if(!_funcptr_glIndexub) ++numFailed;
	_funcptr_glIndexubv = (PFNGLINDEXUBVPROC)FUNC0("glIndexubv");
	if(!_funcptr_glIndexubv) ++numFailed;
	_funcptr_glInterleavedArrays = (PFNGLINTERLEAVEDARRAYSPROC)FUNC0("glInterleavedArrays");
	if(!_funcptr_glInterleavedArrays) ++numFailed;
	_funcptr_glNormalPointer = (PFNGLNORMALPOINTERPROC)FUNC0("glNormalPointer");
	if(!_funcptr_glNormalPointer) ++numFailed;
	_funcptr_glPopClientAttrib = (PFNGLPOPCLIENTATTRIBPROC)FUNC0("glPopClientAttrib");
	if(!_funcptr_glPopClientAttrib) ++numFailed;
	_funcptr_glPrioritizeTextures = (PFNGLPRIORITIZETEXTURESPROC)FUNC0("glPrioritizeTextures");
	if(!_funcptr_glPrioritizeTextures) ++numFailed;
	_funcptr_glPushClientAttrib = (PFNGLPUSHCLIENTATTRIBPROC)FUNC0("glPushClientAttrib");
	if(!_funcptr_glPushClientAttrib) ++numFailed;
	_funcptr_glTexCoordPointer = (PFNGLTEXCOORDPOINTERPROC)FUNC0("glTexCoordPointer");
	if(!_funcptr_glTexCoordPointer) ++numFailed;
	_funcptr_glVertexPointer = (PFNGLVERTEXPOINTERPROC)FUNC0("glVertexPointer");
	if(!_funcptr_glVertexPointer) ++numFailed;
	return numFailed;
}