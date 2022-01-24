#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  void* uid_t ;
struct stat {int st_size; int st_blocks; void* st_gid; void* st_uid; int /*<<< orphan*/  st_blksize; int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_rdev; int /*<<< orphan*/  st_atime; int /*<<< orphan*/  st_ctime; int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_nlink; } ;
struct TYPE_15__ {int /*<<< orphan*/  guid; int /*<<< orphan*/  uid; int /*<<< orphan*/  mtime; int /*<<< orphan*/  mode; } ;
struct TYPE_12__ {int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct TYPE_11__ {int file_size; } ;
struct TYPE_13__ {int symlink_size; TYPE_2__ dev; TYPE_1__ reg; } ;
struct TYPE_16__ {TYPE_5__ base; TYPE_3__ xtra; int /*<<< orphan*/  nlink; } ;
typedef  TYPE_6__ sqfs_inode ;
typedef  scalar_t__ sqfs_err ;
struct TYPE_14__ {int /*<<< orphan*/  block_size; } ;
struct TYPE_17__ {TYPE_4__ sb; } ;
typedef  TYPE_7__ sqfs ;

/* Variables and functions */
 scalar_t__ SQFS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct stat*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_7__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

sqfs_err FUNC7(sqfs *fs, sqfs_inode *inode, struct stat *st) {
        sqfs_err err = SQFS_OK;
        uid_t id;

        FUNC4(st, 0, sizeof(*st));
        st->st_mode = inode->base.mode;
        st->st_nlink = inode->nlink;
        st->st_mtime = st->st_ctime = st->st_atime = inode->base.mtime;

        if (FUNC3(st->st_mode)) {
                /* FIXME: do symlinks, dirs, etc have a size? */
                st->st_size = inode->xtra.reg.file_size;
                st->st_blocks = st->st_size / 512;
        } else if (FUNC0(st->st_mode) || FUNC1(st->st_mode)) {
                st->st_rdev = FUNC6(inode->xtra.dev.major,
                        inode->xtra.dev.minor);
        } else if (FUNC2(st->st_mode)) {
                st->st_size = inode->xtra.symlink_size;
        }

        st->st_blksize = fs->sb.block_size; /* seriously? */

        err = FUNC5(fs, inode->base.uid, &id);
        if (err)
                return err;
        st->st_uid = id;
        err = FUNC5(fs, inode->base.guid, &id);
        st->st_gid = id;
        if (err)
                return err;

        return SQFS_OK;
}