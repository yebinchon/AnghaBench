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
typedef  int /*<<< orphan*/  vfs_entry_t ;
struct _reent {int dummy; } ;
typedef  int /*<<< orphan*/  __errno_r ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct _reent*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  EXDEV ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  link ; 
 char* FUNC2 (int /*<<< orphan*/  const*,char const*) ; 

int FUNC3(struct _reent *r, const char* n1, const char* n2)
{
    const vfs_entry_t* vfs = FUNC1(n1);
    if (vfs == NULL) {
        __errno_r(r) = ENOENT;
        return -1;
    }
    const vfs_entry_t* vfs2 = FUNC1(n2);
    if (vfs != vfs2) {
        __errno_r(r) = EXDEV;
        return -1;
    }
    const char* path1_within_vfs = FUNC2(vfs, n1);
    const char* path2_within_vfs = FUNC2(vfs, n2);
    int ret;
    FUNC0(ret, r, vfs, link, path1_within_vfs, path2_within_vfs);
    return ret;
}