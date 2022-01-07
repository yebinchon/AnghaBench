
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct stat {int st_nlink; int st_size; int st_blocks; int st_mtime; int st_ctime; int st_atime; int st_ino; int st_gid; int st_uid; int st_dev; int st_mode; } ;
struct _reent {int _errno; } ;
struct TYPE_11__ {TYPE_2__* dev; int dirHandle; } ;
typedef TYPE_3__ sd_fat_dir_entry_t ;
struct TYPE_13__ {scalar_t__ dirStruct; } ;
struct TYPE_9__ {int flag; int size; int mtime; int ctime; int ent_id; int group_id; int owner_id; } ;
struct TYPE_12__ {TYPE_1__ stat; int name; } ;
struct TYPE_10__ {int pMutex; int pCmd; int pClient; } ;
typedef int FSDirectoryEntry ;
typedef TYPE_4__ FSDirEntry ;
typedef TYPE_5__ DIR_ITER ;


 int ENODEV ;
 int FSReadDir (int ,int ,int ,int *,int) ;
 int OSLockMutex (int ) ;
 int OSUnlockMutex (int ) ;
 int S_IFDIR ;
 int S_IFREG ;
 int free (TYPE_4__*) ;
 TYPE_4__* malloc (int) ;
 int memset (struct stat*,int ,int) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static int sd_fat_dirnext_r (struct _reent *r, DIR_ITER *dirState, char *filename, struct stat *st)
{
    sd_fat_dir_entry_t *dirIter = (sd_fat_dir_entry_t *)dirState->dirStruct;
    if(!dirIter->dev) {
        r->_errno = ENODEV;
        return -1;
    }

    OSLockMutex(dirIter->dev->pMutex);

    FSDirEntry * dir_entry = malloc(sizeof(FSDirEntry));

    int result = FSReadDir(dirIter->dev->pClient, dirIter->dev->pCmd, dirIter->dirHandle, (FSDirectoryEntry*)dir_entry, -1);
    if(result < 0)
    {
        free(dir_entry);
        r->_errno = result;
        OSUnlockMutex(dirIter->dev->pMutex);
        return -1;
    }


    strcpy(filename, dir_entry->name);

    if(st)
    {
        memset(st, 0, sizeof(struct stat));
        st->st_mode = (dir_entry->stat.flag & 0x80000000) ? S_IFDIR : S_IFREG;
        st->st_nlink = 1;
        st->st_size = dir_entry->stat.size;
        st->st_blocks = (dir_entry->stat.size + 511) >> 9;
        st->st_dev = dir_entry->stat.ent_id;
        st->st_uid = dir_entry->stat.owner_id;
        st->st_gid = dir_entry->stat.group_id;
        st->st_ino = dir_entry->stat.ent_id;
        st->st_atime = dir_entry->stat.mtime;
        st->st_ctime = dir_entry->stat.ctime;
        st->st_mtime = dir_entry->stat.mtime;
    }

    free(dir_entry);
    OSUnlockMutex(dirIter->dev->pMutex);
    return 0;
}
