#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_entry_t ;
struct dirent {int dummy; } ;
struct _reent {int dummy; } ;
typedef  int /*<<< orphan*/  __errno_r ;
struct TYPE_5__ {int /*<<< orphan*/  dd_vfs_idx; } ;
typedef  TYPE_1__ DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dirent*,struct _reent*,int /*<<< orphan*/  const*,struct dirent* (*) (TYPE_1__*),TYPE_1__*) ; 
 int /*<<< orphan*/  EBADF ; 
 struct _reent* FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

struct dirent* FUNC3(DIR* pdir)
{
    const vfs_entry_t* vfs = FUNC2(pdir->dd_vfs_idx);
    struct _reent* r = FUNC1();
    if (vfs == NULL) {
       __errno_r(r) = EBADF;
        return NULL;
    }
    struct dirent* ret;
    FUNC0(ret, r, vfs, readdir, pdir);
    return ret;
}