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
typedef  scalar_t__ PFNGLNAMEDSTRINGARBPROC ;
typedef  scalar_t__ PFNGLISNAMEDSTRINGARBPROC ;
typedef  scalar_t__ PFNGLGETNAMEDSTRINGIVARBPROC ;
typedef  scalar_t__ PFNGLGETNAMEDSTRINGARBPROC ;
typedef  scalar_t__ PFNGLDELETENAMEDSTRINGARBPROC ;
typedef  scalar_t__ PFNGLCOMPILESHADERINCLUDEARBPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glCompileShaderIncludeARB ; 
 scalar_t__ _funcptr_glDeleteNamedStringARB ; 
 scalar_t__ _funcptr_glGetNamedStringARB ; 
 scalar_t__ _funcptr_glGetNamedStringivARB ; 
 scalar_t__ _funcptr_glIsNamedStringARB ; 
 scalar_t__ _funcptr_glNamedStringARB ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glCompileShaderIncludeARB = (PFNGLCOMPILESHADERINCLUDEARBPROC)FUNC0("glCompileShaderIncludeARB");
	if(!_funcptr_glCompileShaderIncludeARB) ++numFailed;
	_funcptr_glDeleteNamedStringARB = (PFNGLDELETENAMEDSTRINGARBPROC)FUNC0("glDeleteNamedStringARB");
	if(!_funcptr_glDeleteNamedStringARB) ++numFailed;
	_funcptr_glGetNamedStringARB = (PFNGLGETNAMEDSTRINGARBPROC)FUNC0("glGetNamedStringARB");
	if(!_funcptr_glGetNamedStringARB) ++numFailed;
	_funcptr_glGetNamedStringivARB = (PFNGLGETNAMEDSTRINGIVARBPROC)FUNC0("glGetNamedStringivARB");
	if(!_funcptr_glGetNamedStringivARB) ++numFailed;
	_funcptr_glIsNamedStringARB = (PFNGLISNAMEDSTRINGARBPROC)FUNC0("glIsNamedStringARB");
	if(!_funcptr_glIsNamedStringARB) ++numFailed;
	_funcptr_glNamedStringARB = (PFNGLNAMEDSTRINGARBPROC)FUNC0("glNamedStringARB");
	if(!_funcptr_glNamedStringARB) ++numFailed;
	return numFailed;
}