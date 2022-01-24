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
typedef  scalar_t__ PFNGLUNIFORM4UIVEXTPROC ;
typedef  scalar_t__ PFNGLUNIFORM4UIEXTPROC ;
typedef  scalar_t__ PFNGLUNIFORM3UIVEXTPROC ;
typedef  scalar_t__ PFNGLUNIFORM3UIEXTPROC ;
typedef  scalar_t__ PFNGLUNIFORM2UIVEXTPROC ;
typedef  scalar_t__ PFNGLUNIFORM2UIEXTPROC ;
typedef  scalar_t__ PFNGLUNIFORM1UIVEXTPROC ;
typedef  scalar_t__ PFNGLUNIFORM1UIEXTPROC ;
typedef  scalar_t__ PFNGLGETUNIFORMUIVEXTPROC ;
typedef  scalar_t__ PFNGLGETFRAGDATALOCATIONEXTPROC ;
typedef  scalar_t__ PFNGLBINDFRAGDATALOCATIONEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBindFragDataLocationEXT ; 
 scalar_t__ _funcptr_glGetFragDataLocationEXT ; 
 scalar_t__ _funcptr_glGetUniformuivEXT ; 
 scalar_t__ _funcptr_glUniform1uiEXT ; 
 scalar_t__ _funcptr_glUniform1uivEXT ; 
 scalar_t__ _funcptr_glUniform2uiEXT ; 
 scalar_t__ _funcptr_glUniform2uivEXT ; 
 scalar_t__ _funcptr_glUniform3uiEXT ; 
 scalar_t__ _funcptr_glUniform3uivEXT ; 
 scalar_t__ _funcptr_glUniform4uiEXT ; 
 scalar_t__ _funcptr_glUniform4uivEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBindFragDataLocationEXT = (PFNGLBINDFRAGDATALOCATIONEXTPROC)FUNC0("glBindFragDataLocationEXT");
	if(!_funcptr_glBindFragDataLocationEXT) ++numFailed;
	_funcptr_glGetFragDataLocationEXT = (PFNGLGETFRAGDATALOCATIONEXTPROC)FUNC0("glGetFragDataLocationEXT");
	if(!_funcptr_glGetFragDataLocationEXT) ++numFailed;
	_funcptr_glGetUniformuivEXT = (PFNGLGETUNIFORMUIVEXTPROC)FUNC0("glGetUniformuivEXT");
	if(!_funcptr_glGetUniformuivEXT) ++numFailed;
	_funcptr_glUniform1uiEXT = (PFNGLUNIFORM1UIEXTPROC)FUNC0("glUniform1uiEXT");
	if(!_funcptr_glUniform1uiEXT) ++numFailed;
	_funcptr_glUniform1uivEXT = (PFNGLUNIFORM1UIVEXTPROC)FUNC0("glUniform1uivEXT");
	if(!_funcptr_glUniform1uivEXT) ++numFailed;
	_funcptr_glUniform2uiEXT = (PFNGLUNIFORM2UIEXTPROC)FUNC0("glUniform2uiEXT");
	if(!_funcptr_glUniform2uiEXT) ++numFailed;
	_funcptr_glUniform2uivEXT = (PFNGLUNIFORM2UIVEXTPROC)FUNC0("glUniform2uivEXT");
	if(!_funcptr_glUniform2uivEXT) ++numFailed;
	_funcptr_glUniform3uiEXT = (PFNGLUNIFORM3UIEXTPROC)FUNC0("glUniform3uiEXT");
	if(!_funcptr_glUniform3uiEXT) ++numFailed;
	_funcptr_glUniform3uivEXT = (PFNGLUNIFORM3UIVEXTPROC)FUNC0("glUniform3uivEXT");
	if(!_funcptr_glUniform3uivEXT) ++numFailed;
	_funcptr_glUniform4uiEXT = (PFNGLUNIFORM4UIEXTPROC)FUNC0("glUniform4uiEXT");
	if(!_funcptr_glUniform4uiEXT) ++numFailed;
	_funcptr_glUniform4uivEXT = (PFNGLUNIFORM4UIVEXTPROC)FUNC0("glUniform4uivEXT");
	if(!_funcptr_glUniform4uivEXT) ++numFailed;
	return numFailed;
}