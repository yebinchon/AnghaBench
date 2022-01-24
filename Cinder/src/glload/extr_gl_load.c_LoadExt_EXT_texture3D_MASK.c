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
typedef  scalar_t__ PFNGLTEXSUBIMAGE3DEXTPROC ;
typedef  scalar_t__ PFNGLTEXIMAGE3DEXTPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glTexImage3DEXT ; 
 scalar_t__ _funcptr_glTexSubImage3DEXT ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glTexImage3DEXT = (PFNGLTEXIMAGE3DEXTPROC)FUNC0("glTexImage3DEXT");
	if(!_funcptr_glTexImage3DEXT) ++numFailed;
	_funcptr_glTexSubImage3DEXT = (PFNGLTEXSUBIMAGE3DEXTPROC)FUNC0("glTexSubImage3DEXT");
	if(!_funcptr_glTexSubImage3DEXT) ++numFailed;
	return numFailed;
}