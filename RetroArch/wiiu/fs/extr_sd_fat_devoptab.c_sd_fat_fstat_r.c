
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_size; int st_blocks; int st_nlink; int st_mtime; int st_ctime; int st_atime; int st_ino; int st_gid; int st_uid; int st_dev; int st_mode; } ;
struct _reent {int _errno; } ;
struct TYPE_5__ {TYPE_1__* dev; int fd; } ;
typedef TYPE_2__ sd_fat_file_state_t ;
struct TYPE_6__ {int size; int mtime; int ctime; int ent_id; int group_id; int owner_id; } ;
struct TYPE_4__ {int pMutex; int pCmd; int pClient; } ;
typedef TYPE_3__ FSStat__ ;
typedef int FSStat ;


 int ENODEV ;
 int FSGetStatFile (int ,int ,int ,int *,int) ;
 int OSLockMutex (int ) ;
 int OSUnlockMutex (int ) ;
 int S_IFREG ;
 int memset (struct stat*,int ,int) ;

__attribute__((used)) static int sd_fat_fstat_r (struct _reent *r, void* fd, struct stat *st)
{
    sd_fat_file_state_t *file = (sd_fat_file_state_t *)fd;
    if(!file->dev) {
        r->_errno = ENODEV;
        return -1;
    }

    OSLockMutex(file->dev->pMutex);


    memset(st, 0, sizeof(struct stat));

    FSStat__ stats;
    int result = FSGetStatFile(file->dev->pClient, file->dev->pCmd, file->fd, (FSStat*)&stats, -1);
    if(result != 0) {
        r->_errno = result;
        OSUnlockMutex(file->dev->pMutex);
        return -1;
    }

    st->st_mode = S_IFREG;
    st->st_size = stats.size;
    st->st_blocks = (stats.size + 511) >> 9;
    st->st_nlink = 1;


    st->st_dev = stats.ent_id;
    st->st_uid = stats.owner_id;
    st->st_gid = stats.group_id;
    st->st_ino = stats.ent_id;
    st->st_atime = stats.mtime;
    st->st_ctime = stats.ctime;
    st->st_mtime = stats.mtime;
    OSUnlockMutex(file->dev->pMutex);
    return 0;
}
