
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long offset; } ;
typedef TYPE_1__ vfs_fat_dir_t ;
typedef int DIR ;


 int assert (int *) ;

__attribute__((used)) static long vfs_fat_telldir(void* ctx, DIR* pdir)
{
    assert(pdir);
    vfs_fat_dir_t* fat_dir = (vfs_fat_dir_t*) pdir;
    return fat_dir->offset;
}
