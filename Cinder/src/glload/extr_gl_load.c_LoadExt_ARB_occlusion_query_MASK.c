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
typedef  scalar_t__ PFNGLISQUERYARBPROC ;
typedef  scalar_t__ PFNGLGETQUERYOBJECTUIVARBPROC ;
typedef  scalar_t__ PFNGLGETQUERYOBJECTIVARBPROC ;
typedef  scalar_t__ PFNGLGETQUERYIVARBPROC ;
typedef  scalar_t__ PFNGLGENQUERIESARBPROC ;
typedef  scalar_t__ PFNGLENDQUERYARBPROC ;
typedef  scalar_t__ PFNGLDELETEQUERIESARBPROC ;
typedef  scalar_t__ PFNGLBEGINQUERYARBPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glBeginQueryARB ; 
 scalar_t__ _funcptr_glDeleteQueriesARB ; 
 scalar_t__ _funcptr_glEndQueryARB ; 
 scalar_t__ _funcptr_glGenQueriesARB ; 
 scalar_t__ _funcptr_glGetQueryObjectivARB ; 
 scalar_t__ _funcptr_glGetQueryObjectuivARB ; 
 scalar_t__ _funcptr_glGetQueryivARB ; 
 scalar_t__ _funcptr_glIsQueryARB ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glBeginQueryARB = (PFNGLBEGINQUERYARBPROC)FUNC0("glBeginQueryARB");
	if(!_funcptr_glBeginQueryARB) ++numFailed;
	_funcptr_glDeleteQueriesARB = (PFNGLDELETEQUERIESARBPROC)FUNC0("glDeleteQueriesARB");
	if(!_funcptr_glDeleteQueriesARB) ++numFailed;
	_funcptr_glEndQueryARB = (PFNGLENDQUERYARBPROC)FUNC0("glEndQueryARB");
	if(!_funcptr_glEndQueryARB) ++numFailed;
	_funcptr_glGenQueriesARB = (PFNGLGENQUERIESARBPROC)FUNC0("glGenQueriesARB");
	if(!_funcptr_glGenQueriesARB) ++numFailed;
	_funcptr_glGetQueryObjectivARB = (PFNGLGETQUERYOBJECTIVARBPROC)FUNC0("glGetQueryObjectivARB");
	if(!_funcptr_glGetQueryObjectivARB) ++numFailed;
	_funcptr_glGetQueryObjectuivARB = (PFNGLGETQUERYOBJECTUIVARBPROC)FUNC0("glGetQueryObjectuivARB");
	if(!_funcptr_glGetQueryObjectuivARB) ++numFailed;
	_funcptr_glGetQueryivARB = (PFNGLGETQUERYIVARBPROC)FUNC0("glGetQueryivARB");
	if(!_funcptr_glGetQueryivARB) ++numFailed;
	_funcptr_glIsQueryARB = (PFNGLISQUERYARBPROC)FUNC0("glIsQueryARB");
	if(!_funcptr_glIsQueryARB) ++numFailed;
	return numFailed;
}