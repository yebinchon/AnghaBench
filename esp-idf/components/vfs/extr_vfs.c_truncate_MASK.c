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
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  __errno_r ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct _reent*,int /*<<< orphan*/  const*,int (*) (char const*,int /*<<< orphan*/ ),char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOENT ; 
 struct _reent* FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/  const*,char const*) ; 

int FUNC4(const char *path, off_t length)
{
    int ret;
    const vfs_entry_t* vfs = FUNC2(path);
    struct _reent* r = FUNC1();
    if (vfs == NULL) {
        __errno_r(r) = ENOENT;
        return -1;
    }
    const char* path_within_vfs = FUNC3(vfs, path);
    FUNC0(ret, r, vfs, truncate, path_within_vfs, length);
    return ret;
}