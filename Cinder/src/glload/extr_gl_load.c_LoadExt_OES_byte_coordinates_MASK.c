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
typedef  scalar_t__ PFNGLVERTEX4BVOESPROC ;
typedef  scalar_t__ PFNGLVERTEX4BOESPROC ;
typedef  scalar_t__ PFNGLVERTEX3BVOESPROC ;
typedef  scalar_t__ PFNGLVERTEX3BOESPROC ;
typedef  scalar_t__ PFNGLVERTEX2BVOESPROC ;
typedef  scalar_t__ PFNGLVERTEX2BOESPROC ;
typedef  scalar_t__ PFNGLTEXCOORD4BVOESPROC ;
typedef  scalar_t__ PFNGLTEXCOORD4BOESPROC ;
typedef  scalar_t__ PFNGLTEXCOORD3BVOESPROC ;
typedef  scalar_t__ PFNGLTEXCOORD3BOESPROC ;
typedef  scalar_t__ PFNGLTEXCOORD2BVOESPROC ;
typedef  scalar_t__ PFNGLTEXCOORD2BOESPROC ;
typedef  scalar_t__ PFNGLTEXCOORD1BVOESPROC ;
typedef  scalar_t__ PFNGLTEXCOORD1BOESPROC ;
typedef  scalar_t__ PFNGLMULTITEXCOORD4BVOESPROC ;
typedef  scalar_t__ PFNGLMULTITEXCOORD4BOESPROC ;
typedef  scalar_t__ PFNGLMULTITEXCOORD3BVOESPROC ;
typedef  scalar_t__ PFNGLMULTITEXCOORD3BOESPROC ;
typedef  scalar_t__ PFNGLMULTITEXCOORD2BVOESPROC ;
typedef  scalar_t__ PFNGLMULTITEXCOORD2BOESPROC ;
typedef  scalar_t__ PFNGLMULTITEXCOORD1BVOESPROC ;
typedef  scalar_t__ PFNGLMULTITEXCOORD1BOESPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glMultiTexCoord1bOES ; 
 scalar_t__ _funcptr_glMultiTexCoord1bvOES ; 
 scalar_t__ _funcptr_glMultiTexCoord2bOES ; 
 scalar_t__ _funcptr_glMultiTexCoord2bvOES ; 
 scalar_t__ _funcptr_glMultiTexCoord3bOES ; 
 scalar_t__ _funcptr_glMultiTexCoord3bvOES ; 
 scalar_t__ _funcptr_glMultiTexCoord4bOES ; 
 scalar_t__ _funcptr_glMultiTexCoord4bvOES ; 
 scalar_t__ _funcptr_glTexCoord1bOES ; 
 scalar_t__ _funcptr_glTexCoord1bvOES ; 
 scalar_t__ _funcptr_glTexCoord2bOES ; 
 scalar_t__ _funcptr_glTexCoord2bvOES ; 
 scalar_t__ _funcptr_glTexCoord3bOES ; 
 scalar_t__ _funcptr_glTexCoord3bvOES ; 
 scalar_t__ _funcptr_glTexCoord4bOES ; 
 scalar_t__ _funcptr_glTexCoord4bvOES ; 
 scalar_t__ _funcptr_glVertex2bOES ; 
 scalar_t__ _funcptr_glVertex2bvOES ; 
 scalar_t__ _funcptr_glVertex3bOES ; 
 scalar_t__ _funcptr_glVertex3bvOES ; 
 scalar_t__ _funcptr_glVertex4bOES ; 
 scalar_t__ _funcptr_glVertex4bvOES ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glMultiTexCoord1bOES = (PFNGLMULTITEXCOORD1BOESPROC)FUNC0("glMultiTexCoord1bOES");
	if(!_funcptr_glMultiTexCoord1bOES) ++numFailed;
	_funcptr_glMultiTexCoord1bvOES = (PFNGLMULTITEXCOORD1BVOESPROC)FUNC0("glMultiTexCoord1bvOES");
	if(!_funcptr_glMultiTexCoord1bvOES) ++numFailed;
	_funcptr_glMultiTexCoord2bOES = (PFNGLMULTITEXCOORD2BOESPROC)FUNC0("glMultiTexCoord2bOES");
	if(!_funcptr_glMultiTexCoord2bOES) ++numFailed;
	_funcptr_glMultiTexCoord2bvOES = (PFNGLMULTITEXCOORD2BVOESPROC)FUNC0("glMultiTexCoord2bvOES");
	if(!_funcptr_glMultiTexCoord2bvOES) ++numFailed;
	_funcptr_glMultiTexCoord3bOES = (PFNGLMULTITEXCOORD3BOESPROC)FUNC0("glMultiTexCoord3bOES");
	if(!_funcptr_glMultiTexCoord3bOES) ++numFailed;
	_funcptr_glMultiTexCoord3bvOES = (PFNGLMULTITEXCOORD3BVOESPROC)FUNC0("glMultiTexCoord3bvOES");
	if(!_funcptr_glMultiTexCoord3bvOES) ++numFailed;
	_funcptr_glMultiTexCoord4bOES = (PFNGLMULTITEXCOORD4BOESPROC)FUNC0("glMultiTexCoord4bOES");
	if(!_funcptr_glMultiTexCoord4bOES) ++numFailed;
	_funcptr_glMultiTexCoord4bvOES = (PFNGLMULTITEXCOORD4BVOESPROC)FUNC0("glMultiTexCoord4bvOES");
	if(!_funcptr_glMultiTexCoord4bvOES) ++numFailed;
	_funcptr_glTexCoord1bOES = (PFNGLTEXCOORD1BOESPROC)FUNC0("glTexCoord1bOES");
	if(!_funcptr_glTexCoord1bOES) ++numFailed;
	_funcptr_glTexCoord1bvOES = (PFNGLTEXCOORD1BVOESPROC)FUNC0("glTexCoord1bvOES");
	if(!_funcptr_glTexCoord1bvOES) ++numFailed;
	_funcptr_glTexCoord2bOES = (PFNGLTEXCOORD2BOESPROC)FUNC0("glTexCoord2bOES");
	if(!_funcptr_glTexCoord2bOES) ++numFailed;
	_funcptr_glTexCoord2bvOES = (PFNGLTEXCOORD2BVOESPROC)FUNC0("glTexCoord2bvOES");
	if(!_funcptr_glTexCoord2bvOES) ++numFailed;
	_funcptr_glTexCoord3bOES = (PFNGLTEXCOORD3BOESPROC)FUNC0("glTexCoord3bOES");
	if(!_funcptr_glTexCoord3bOES) ++numFailed;
	_funcptr_glTexCoord3bvOES = (PFNGLTEXCOORD3BVOESPROC)FUNC0("glTexCoord3bvOES");
	if(!_funcptr_glTexCoord3bvOES) ++numFailed;
	_funcptr_glTexCoord4bOES = (PFNGLTEXCOORD4BOESPROC)FUNC0("glTexCoord4bOES");
	if(!_funcptr_glTexCoord4bOES) ++numFailed;
	_funcptr_glTexCoord4bvOES = (PFNGLTEXCOORD4BVOESPROC)FUNC0("glTexCoord4bvOES");
	if(!_funcptr_glTexCoord4bvOES) ++numFailed;
	_funcptr_glVertex2bOES = (PFNGLVERTEX2BOESPROC)FUNC0("glVertex2bOES");
	if(!_funcptr_glVertex2bOES) ++numFailed;
	_funcptr_glVertex2bvOES = (PFNGLVERTEX2BVOESPROC)FUNC0("glVertex2bvOES");
	if(!_funcptr_glVertex2bvOES) ++numFailed;
	_funcptr_glVertex3bOES = (PFNGLVERTEX3BOESPROC)FUNC0("glVertex3bOES");
	if(!_funcptr_glVertex3bOES) ++numFailed;
	_funcptr_glVertex3bvOES = (PFNGLVERTEX3BVOESPROC)FUNC0("glVertex3bvOES");
	if(!_funcptr_glVertex3bvOES) ++numFailed;
	_funcptr_glVertex4bOES = (PFNGLVERTEX4BOESPROC)FUNC0("glVertex4bOES");
	if(!_funcptr_glVertex4bOES) ++numFailed;
	_funcptr_glVertex4bvOES = (PFNGLVERTEX4BVOESPROC)FUNC0("glVertex4bvOES");
	if(!_funcptr_glVertex4bvOES) ++numFailed;
	return numFailed;
}