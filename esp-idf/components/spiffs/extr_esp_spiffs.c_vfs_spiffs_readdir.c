
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int e; } ;
typedef TYPE_1__ vfs_spiffs_dir_t ;
struct dirent {int dummy; } ;
typedef int DIR ;


 int assert (int *) ;
 int errno ;
 int vfs_spiffs_readdir_r (void*,int *,int *,struct dirent**) ;

__attribute__((used)) static struct dirent* vfs_spiffs_readdir(void* ctx, DIR* pdir)
{
    assert(pdir);
    vfs_spiffs_dir_t * dir = (vfs_spiffs_dir_t *)pdir;
    struct dirent* out_dirent;
    int err = vfs_spiffs_readdir_r(ctx, pdir, &dir->e, &out_dirent);
    if (err != 0) {
        errno = err;
        return ((void*)0);
    }
    return out_dirent;
}
