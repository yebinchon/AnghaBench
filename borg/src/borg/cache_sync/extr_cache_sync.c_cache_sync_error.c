
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* last_error; } ;
struct TYPE_6__ {TYPE_1__ user; } ;
struct TYPE_7__ {TYPE_2__ ctx; } ;
typedef TYPE_3__ CacheSyncCtx ;



__attribute__((used)) static const char *
cache_sync_error(const CacheSyncCtx *ctx)
{
    return ctx->ctx.user.last_error;
}
