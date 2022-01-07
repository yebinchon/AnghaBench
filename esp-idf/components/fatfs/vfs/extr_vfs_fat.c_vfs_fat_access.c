
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
typedef TYPE_1__ vfs_fat_ctx_t ;
struct TYPE_6__ {int fattrib; } ;
typedef scalar_t__ FRESULT ;
typedef TYPE_2__ FILINFO ;


 int AM_RDO ;
 int EACCES ;
 int ENOENT ;
 scalar_t__ FR_OK ;
 int W_OK ;
 int _lock_acquire (int *) ;
 int _lock_release (int *) ;
 int errno ;
 scalar_t__ f_stat (char const*,TYPE_2__*) ;
 int prepend_drive_to_path (TYPE_1__*,char const**,int *) ;

__attribute__((used)) static int vfs_fat_access(void* ctx, const char *path, int amode)
{
    FILINFO info;
    int ret = 0;
    FRESULT res;

    vfs_fat_ctx_t* fat_ctx = (vfs_fat_ctx_t*) ctx;

    _lock_acquire(&fat_ctx->lock);
    prepend_drive_to_path(fat_ctx, &path, ((void*)0));
    res = f_stat(path, &info);
    _lock_release(&fat_ctx->lock);

    if (res == FR_OK) {
        if (((amode & W_OK) == W_OK) && ((info.fattrib & AM_RDO) == AM_RDO)) {
            ret = -1;
            errno = EACCES;
        }


    } else {
        ret = -1;
        errno = ENOENT;
    }

    return ret;
}
