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
typedef  scalar_t__ PFNGLREPLACEMENTCODEUSVSUNPROC ;
typedef  scalar_t__ PFNGLREPLACEMENTCODEUSSUNPROC ;
typedef  scalar_t__ PFNGLREPLACEMENTCODEUIVSUNPROC ;
typedef  scalar_t__ PFNGLREPLACEMENTCODEUISUNPROC ;
typedef  scalar_t__ PFNGLREPLACEMENTCODEUBVSUNPROC ;
typedef  scalar_t__ PFNGLREPLACEMENTCODEUBSUNPROC ;
typedef  scalar_t__ PFNGLREPLACEMENTCODEPOINTERSUNPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glReplacementCodePointerSUN ; 
 scalar_t__ _funcptr_glReplacementCodeubSUN ; 
 scalar_t__ _funcptr_glReplacementCodeubvSUN ; 
 scalar_t__ _funcptr_glReplacementCodeuiSUN ; 
 scalar_t__ _funcptr_glReplacementCodeuivSUN ; 
 scalar_t__ _funcptr_glReplacementCodeusSUN ; 
 scalar_t__ _funcptr_glReplacementCodeusvSUN ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glReplacementCodePointerSUN = (PFNGLREPLACEMENTCODEPOINTERSUNPROC)FUNC0("glReplacementCodePointerSUN");
	if(!_funcptr_glReplacementCodePointerSUN) ++numFailed;
	_funcptr_glReplacementCodeubSUN = (PFNGLREPLACEMENTCODEUBSUNPROC)FUNC0("glReplacementCodeubSUN");
	if(!_funcptr_glReplacementCodeubSUN) ++numFailed;
	_funcptr_glReplacementCodeubvSUN = (PFNGLREPLACEMENTCODEUBVSUNPROC)FUNC0("glReplacementCodeubvSUN");
	if(!_funcptr_glReplacementCodeubvSUN) ++numFailed;
	_funcptr_glReplacementCodeuiSUN = (PFNGLREPLACEMENTCODEUISUNPROC)FUNC0("glReplacementCodeuiSUN");
	if(!_funcptr_glReplacementCodeuiSUN) ++numFailed;
	_funcptr_glReplacementCodeuivSUN = (PFNGLREPLACEMENTCODEUIVSUNPROC)FUNC0("glReplacementCodeuivSUN");
	if(!_funcptr_glReplacementCodeuivSUN) ++numFailed;
	_funcptr_glReplacementCodeusSUN = (PFNGLREPLACEMENTCODEUSSUNPROC)FUNC0("glReplacementCodeusSUN");
	if(!_funcptr_glReplacementCodeusSUN) ++numFailed;
	_funcptr_glReplacementCodeusvSUN = (PFNGLREPLACEMENTCODEUSVSUNPROC)FUNC0("glReplacementCodeusvSUN");
	if(!_funcptr_glReplacementCodeusvSUN) ++numFailed;
	return numFailed;
}