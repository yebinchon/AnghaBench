
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t max_files; TYPE_2__* files; } ;
typedef TYPE_3__ vfs_fat_ctx_t ;
struct TYPE_5__ {int * fs; } ;
struct TYPE_6__ {TYPE_1__ obj; } ;



__attribute__((used)) static int get_next_fd(vfs_fat_ctx_t* fat_ctx)
{
    for (size_t i = 0; i < fat_ctx->max_files; ++i) {
        if (fat_ctx->files[i].obj.fs == ((void*)0)) {
            return (int) i;
        }
    }
    return -1;
}
