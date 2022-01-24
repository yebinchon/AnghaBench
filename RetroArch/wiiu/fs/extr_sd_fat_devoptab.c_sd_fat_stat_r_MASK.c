#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_nlink; int st_size; int st_blocks; int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_ctime; int /*<<< orphan*/  st_atime; int /*<<< orphan*/  st_ino; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; int /*<<< orphan*/  st_dev; int /*<<< orphan*/  st_mode; } ;
struct _reent {int _errno; } ;
struct TYPE_5__ {char* mount_path; int /*<<< orphan*/  pMutex; int /*<<< orphan*/  pCmd; int /*<<< orphan*/  pClient; } ;
typedef  TYPE_1__ sd_fat_private_t ;
struct TYPE_6__ {int flag; int size; int /*<<< orphan*/  mtime; int /*<<< orphan*/  ctime; int /*<<< orphan*/  ent_id; int /*<<< orphan*/  group_id; int /*<<< orphan*/  owner_id; } ;
typedef  TYPE_2__ FSStat__ ;
typedef  int /*<<< orphan*/  FSStat ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  S_IFREG ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct stat*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC5 (char const*) ; 
 char* FUNC6 (char const*,TYPE_1__*) ; 
 scalar_t__ FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8 (struct _reent *r, const char *path, struct stat *st)
{
    sd_fat_private_t *dev = FUNC5(path);
    if(!dev) {
        r->_errno = ENODEV;
        return -1;
    }

    FUNC1(dev->pMutex);

    /* Zero out the stat buffer */
    FUNC4(st, 0, sizeof(struct stat));

    char *real_path = FUNC6(path, dev);
    if(!real_path) {
        r->_errno = ENOMEM;
        FUNC2(dev->pMutex);
        return -1;
    }

    FSStat__ stats;

    int result = FUNC0(dev->pClient, dev->pCmd, real_path, (FSStat*)&stats, -1);

    FUNC3(real_path);

    if(result < 0) {
        r->_errno = result;
        FUNC2(dev->pMutex);
        return -1;
    }

    /* mark root also as directory */
    st->st_mode = ((stats.flag & 0x80000000) || (FUNC7(dev->mount_path) + 1 == FUNC7(real_path)))? S_IFDIR : S_IFREG;
    st->st_nlink = 1;
    st->st_size = stats.size;
    st->st_blocks = (stats.size + 511) >> 9;
    /* Fill in the generic entry stats */
    st->st_dev = stats.ent_id;
    st->st_uid = stats.owner_id;
    st->st_gid = stats.group_id;
    st->st_ino = stats.ent_id;
    st->st_atime = stats.mtime;
    st->st_ctime = stats.ctime;
    st->st_mtime = stats.mtime;

    FUNC2(dev->pMutex);

    return 0;
}