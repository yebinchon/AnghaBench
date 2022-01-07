
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cur_dirent; } ;
typedef TYPE_1__ vfs_fat_dir_t ;
struct dirent {int dummy; } ;
typedef int DIR ;


 int errno ;
 int vfs_fat_readdir_r (void*,int *,int *,struct dirent**) ;

__attribute__((used)) static struct dirent* vfs_fat_readdir(void* ctx, DIR* pdir)
{
    vfs_fat_dir_t* fat_dir = (vfs_fat_dir_t*) pdir;
    struct dirent* out_dirent;
    int err = vfs_fat_readdir_r(ctx, pdir, &fat_dir->cur_dirent, &out_dirent);
    if (err != 0) {
        errno = err;
        return ((void*)0);
    }
    return out_dirent;
}
