#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ vfs_entry_t ;
struct _reent {int dummy; } ;
typedef  int /*<<< orphan*/  __errno_r ;
struct TYPE_10__ {int /*<<< orphan*/  dd_vfs_idx; } ;
typedef  TYPE_2__ DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct _reent*,TYPE_1__ const*,TYPE_2__* (*) (char const*),char const*) ; 
 int /*<<< orphan*/  ENOENT ; 
 struct _reent* FUNC1 () ; 
 TYPE_1__* FUNC2 (char const*) ; 
 char* FUNC3 (TYPE_1__ const*,char const*) ; 

DIR* FUNC4(const char* name)
{
    const vfs_entry_t* vfs = FUNC2(name);
    struct _reent* r = FUNC1();
    if (vfs == NULL) {
        __errno_r(r) = ENOENT;
        return NULL;
    }
    const char* path_within_vfs = FUNC3(vfs, name);
    DIR* ret;
    FUNC0(ret, r, vfs, opendir, path_within_vfs);
    if (ret != NULL) {
        ret->dd_vfs_idx = vfs->offset;
    }
    return ret;
}