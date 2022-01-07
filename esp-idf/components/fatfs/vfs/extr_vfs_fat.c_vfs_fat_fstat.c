
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * files; } ;
typedef TYPE_1__ vfs_fat_ctx_t ;
struct stat {int st_mode; scalar_t__ st_ctime; scalar_t__ st_atime; scalar_t__ st_mtime; int st_size; } ;
typedef int FIL ;


 int S_IFREG ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int f_size (int *) ;

__attribute__((used)) static int vfs_fat_fstat(void* ctx, int fd, struct stat * st)
{
    vfs_fat_ctx_t* fat_ctx = (vfs_fat_ctx_t*) ctx;
    FIL* file = &fat_ctx->files[fd];
    st->st_size = f_size(file);
    st->st_mode = S_IRWXU | S_IRWXG | S_IRWXO | S_IFREG;
    st->st_mtime = 0;
    st->st_atime = 0;
    st->st_ctime = 0;
    return 0;
}
