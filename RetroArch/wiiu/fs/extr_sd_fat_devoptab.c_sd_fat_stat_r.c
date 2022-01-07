
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_nlink; int st_size; int st_blocks; int st_mtime; int st_ctime; int st_atime; int st_ino; int st_gid; int st_uid; int st_dev; int st_mode; } ;
struct _reent {int _errno; } ;
struct TYPE_5__ {char* mount_path; int pMutex; int pCmd; int pClient; } ;
typedef TYPE_1__ sd_fat_private_t ;
struct TYPE_6__ {int flag; int size; int mtime; int ctime; int ent_id; int group_id; int owner_id; } ;
typedef TYPE_2__ FSStat__ ;
typedef int FSStat ;


 int ENODEV ;
 int ENOMEM ;
 int FSGetStat (int ,int ,char*,int *,int) ;
 int OSLockMutex (int ) ;
 int OSUnlockMutex (int ) ;
 int S_IFDIR ;
 int S_IFREG ;
 int free (char*) ;
 int memset (struct stat*,int ,int) ;
 TYPE_1__* sd_fat_get_device_data (char const*) ;
 char* sd_fat_real_path (char const*,TYPE_1__*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int sd_fat_stat_r (struct _reent *r, const char *path, struct stat *st)
{
    sd_fat_private_t *dev = sd_fat_get_device_data(path);
    if(!dev) {
        r->_errno = ENODEV;
        return -1;
    }

    OSLockMutex(dev->pMutex);


    memset(st, 0, sizeof(struct stat));

    char *real_path = sd_fat_real_path(path, dev);
    if(!real_path) {
        r->_errno = ENOMEM;
        OSUnlockMutex(dev->pMutex);
        return -1;
    }

    FSStat__ stats;

    int result = FSGetStat(dev->pClient, dev->pCmd, real_path, (FSStat*)&stats, -1);

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

    st->st_dev = stats.ent_id;
    st->st_uid = stats.owner_id;
    st->st_gid = stats.group_id;
    st->st_ino = stats.ent_id;
    st->st_atime = stats.mtime;
    st->st_ctime = stats.ctime;
    st->st_mtime = stats.mtime;

    OSUnlockMutex(dev->pMutex);

    return 0;
}
