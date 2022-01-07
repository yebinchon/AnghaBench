
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * files; } ;
typedef TYPE_1__ vfs_fat_ctx_t ;
typedef int FIL ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void file_cleanup(vfs_fat_ctx_t* ctx, int fd)
{
    memset(&ctx->files[fd], 0, sizeof(FIL));
}
