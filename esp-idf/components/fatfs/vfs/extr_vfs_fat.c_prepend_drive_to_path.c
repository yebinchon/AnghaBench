
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* tmp_path_buf; char* fat_drive; char* tmp_path_buf2; } ;
typedef TYPE_1__ vfs_fat_ctx_t ;


 int snprintf (char*,int,char*,char*,char const*) ;

__attribute__((used)) static void prepend_drive_to_path(vfs_fat_ctx_t * ctx, const char ** path, const char ** path2){
    snprintf(ctx->tmp_path_buf, sizeof(ctx->tmp_path_buf), "%s%s", ctx->fat_drive, *path);
    *path = ctx->tmp_path_buf;
    if(path2){
        snprintf(ctx->tmp_path_buf2, sizeof(ctx->tmp_path_buf2), "%s%s", ((vfs_fat_ctx_t*)ctx)->fat_drive, *path2);
        *path2 = ctx->tmp_path_buf2;
    }
}
