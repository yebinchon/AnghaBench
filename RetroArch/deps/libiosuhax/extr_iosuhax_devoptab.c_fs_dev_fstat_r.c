
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_size; int st_blocks; int st_nlink; int st_mtime; int st_ctime; int st_atime; int st_ino; int st_gid; int st_uid; int st_dev; int st_mode; } ;
struct _reent {int _errno; } ;
struct TYPE_6__ {TYPE_1__* dev; } ;
typedef TYPE_2__ fs_dev_file_state_t ;
struct TYPE_7__ {int size; int mtime; int ctime; int id; int group_id; int owner_id; } ;
typedef TYPE_3__ fileStat_s ;
struct TYPE_5__ {int pMutex; int fsaFd; } ;


 int EINVAL ;
 int ENODEV ;
 int IOSUHAX_FSA_StatFile (int ,int,TYPE_3__*) ;
 int OSLockMutex (int ) ;
 int OSUnlockMutex (int ) ;
 int S_IFREG ;
 int memset (struct stat*,int ,int) ;

__attribute__((used)) static int fs_dev_fstat_r (struct _reent *r, void *fd, struct stat *st)
{
    fs_dev_file_state_t *file = (fs_dev_file_state_t *)fd;

    if(!r)
        return -1;

    if(!file) {
        r->_errno = EINVAL;
        return -1;
    }

    if(!file->dev) {
        r->_errno = ENODEV;
        return -1;
    }

    OSLockMutex(file->dev->pMutex);


    memset(st, 0, sizeof(struct stat));

    fileStat_s stats;
    int result = IOSUHAX_FSA_StatFile(file->dev->fsaFd, (int)fd, &stats);
    if(result != 0) {
        r->_errno = result;
        OSUnlockMutex(file->dev->pMutex);
        return -1;
    }

    st->st_mode = S_IFREG;
    st->st_size = stats.size;
    st->st_blocks = (stats.size + 511) >> 9;
    st->st_nlink = 1;


    st->st_dev = stats.id;
    st->st_uid = stats.owner_id;
    st->st_gid = stats.group_id;
    st->st_ino = stats.id;
    st->st_atime = stats.mtime;
    st->st_ctime = stats.ctime;
    st->st_mtime = stats.mtime;
    OSUnlockMutex(file->dev->pMutex);
    return 0;
}
