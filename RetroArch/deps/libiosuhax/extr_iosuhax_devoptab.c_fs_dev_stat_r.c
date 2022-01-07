
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int st_nlink; int st_size; int st_blocks; int st_mtime; int st_ctime; int st_atime; int st_ino; int st_gid; int st_uid; int st_dev; int st_mode; } ;
struct _reent {int _errno; } ;
struct TYPE_6__ {char* mount_path; int pMutex; int fsaFd; } ;
typedef TYPE_1__ fs_dev_private_t ;
struct TYPE_7__ {int flag; int size; int mtime; int ctime; int id; int group_id; int owner_id; } ;
typedef TYPE_2__ fileStat_s ;


 int ENODEV ;
 int ENOMEM ;
 int IOSUHAX_FSA_GetStat (int ,char*,TYPE_2__*) ;
 int OSLockMutex (int ) ;
 int OSUnlockMutex (int ) ;
 int S_IFDIR ;
 int S_IFREG ;
 int free (char*) ;
 TYPE_1__* fs_dev_get_device_data (char const*) ;
 char* fs_dev_real_path (char const*,TYPE_1__*) ;
 int memset (struct stat*,int ,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int fs_dev_stat_r (struct _reent *r, const char *path, struct stat *st)
{
    fs_dev_private_t *dev = fs_dev_get_device_data(path);

    if(!r)
        return -1;

    if(!dev) {
        r->_errno = ENODEV;
        return -1;
    }

    OSLockMutex(dev->pMutex);


    memset(st, 0, sizeof(struct stat));

    char *real_path = fs_dev_real_path(path, dev);
    if(!real_path) {
        r->_errno = ENOMEM;
        OSUnlockMutex(dev->pMutex);
        return -1;
    }

    fileStat_s stats;

    int result = IOSUHAX_FSA_GetStat(dev->fsaFd, real_path, &stats);

    free(real_path);

    if(result < 0) {
        r->_errno = result;
        OSUnlockMutex(dev->pMutex);
        return -1;
    }


    st->st_mode = ((stats.flag & 0x80000000) || (strlen(dev->mount_path) + 1 == strlen(real_path)))? S_IFDIR : S_IFREG;
    st->st_nlink = 1;
    st->st_size = stats.size;
    st->st_blocks = (stats.size + 511) >> 9;

    st->st_dev = stats.id;
    st->st_uid = stats.owner_id;
    st->st_gid = stats.group_id;
    st->st_ino = stats.id;
    st->st_atime = stats.mtime;
    st->st_ctime = stats.ctime;
    st->st_mtime = stats.mtime;

    OSUnlockMutex(dev->pMutex);

    return 0;
}
