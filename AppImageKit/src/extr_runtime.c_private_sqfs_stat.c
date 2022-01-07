
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef void* uid_t ;
struct stat {int st_size; int st_blocks; void* st_gid; void* st_uid; int st_blksize; int st_mode; int st_rdev; int st_atime; int st_ctime; int st_mtime; int st_nlink; } ;
struct TYPE_15__ {int guid; int uid; int mtime; int mode; } ;
struct TYPE_12__ {int minor; int major; } ;
struct TYPE_11__ {int file_size; } ;
struct TYPE_13__ {int symlink_size; TYPE_2__ dev; TYPE_1__ reg; } ;
struct TYPE_16__ {TYPE_5__ base; TYPE_3__ xtra; int nlink; } ;
typedef TYPE_6__ sqfs_inode ;
typedef scalar_t__ sqfs_err ;
struct TYPE_14__ {int block_size; } ;
struct TYPE_17__ {TYPE_4__ sb; } ;
typedef TYPE_7__ sqfs ;


 scalar_t__ SQFS_OK ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int memset (struct stat*,int ,int) ;
 scalar_t__ sqfs_id_get (TYPE_7__*,int ,void**) ;
 int sqfs_makedev (int ,int ) ;

sqfs_err private_sqfs_stat(sqfs *fs, sqfs_inode *inode, struct stat *st) {
        sqfs_err err = SQFS_OK;
        uid_t id;

        memset(st, 0, sizeof(*st));
        st->st_mode = inode->base.mode;
        st->st_nlink = inode->nlink;
        st->st_mtime = st->st_ctime = st->st_atime = inode->base.mtime;

        if (S_ISREG(st->st_mode)) {

                st->st_size = inode->xtra.reg.file_size;
                st->st_blocks = st->st_size / 512;
        } else if (S_ISBLK(st->st_mode) || S_ISCHR(st->st_mode)) {
                st->st_rdev = sqfs_makedev(inode->xtra.dev.major,
                        inode->xtra.dev.minor);
        } else if (S_ISLNK(st->st_mode)) {
                st->st_size = inode->xtra.symlink_size;
        }

        st->st_blksize = fs->sb.block_size;

        err = sqfs_id_get(fs, inode->base.uid, &id);
        if (err)
                return err;
        st->st_uid = id;
        err = sqfs_id_get(fs, inode->base.guid, &id);
        st->st_gid = id;
        if (err)
                return err;

        return SQFS_OK;
}
