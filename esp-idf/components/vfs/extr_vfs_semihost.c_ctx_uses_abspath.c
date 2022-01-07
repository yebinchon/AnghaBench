
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* host_path; } ;
typedef TYPE_1__ vfs_semihost_ctx_t ;



inline bool ctx_uses_abspath(const vfs_semihost_ctx_t* ctx)
{
    return ctx->host_path[0];
}
