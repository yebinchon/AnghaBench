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
typedef  scalar_t__ PFNGLTEXTURESTORAGESPARSEAMDPROC ;
typedef  scalar_t__ PFNGLTEXSTORAGESPARSEAMDPROC ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ _funcptr_glTexStorageSparseAMD ; 
 scalar_t__ _funcptr_glTextureStorageSparseAMD ; 

__attribute__((used)) static int FUNC1()
{
	int numFailed = 0;
	_funcptr_glTexStorageSparseAMD = (PFNGLTEXSTORAGESPARSEAMDPROC)FUNC0("glTexStorageSparseAMD");
	if(!_funcptr_glTexStorageSparseAMD) ++numFailed;
	_funcptr_glTextureStorageSparseAMD = (PFNGLTEXTURESTORAGESPARSEAMDPROC)FUNC0("glTextureStorageSparseAMD");
	if(!_funcptr_glTextureStorageSparseAMD) ++numFailed;
	return numFailed;
}