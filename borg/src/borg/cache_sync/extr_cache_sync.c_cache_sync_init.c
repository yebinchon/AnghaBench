
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ num_files; scalar_t__ csize; scalar_t__ size; } ;
struct TYPE_7__ {scalar_t__ num_files; scalar_t__ csize; scalar_t__ size; } ;
struct TYPE_9__ {TYPE_2__ totals; TYPE_1__ parts; int * chunks; } ;
struct TYPE_11__ {TYPE_3__ user; } ;
struct TYPE_10__ {scalar_t__ size; scalar_t__ tail; scalar_t__ head; int * buf; TYPE_5__ ctx; } ;
typedef int HashIndex ;
typedef TYPE_4__ CacheSyncCtx ;


 scalar_t__ malloc (int) ;
 int unpack_init (TYPE_5__*) ;

__attribute__((used)) static CacheSyncCtx *
cache_sync_init(HashIndex *chunks)
{
    CacheSyncCtx *ctx;
    if (!(ctx = (CacheSyncCtx*)malloc(sizeof(CacheSyncCtx)))) {
        return ((void*)0);
    }

    unpack_init(&ctx->ctx);

    ctx->ctx.user.chunks = chunks;
    ctx->ctx.user.parts.size = 0;
    ctx->ctx.user.parts.csize = 0;
    ctx->ctx.user.parts.num_files = 0;
    ctx->ctx.user.totals.size = 0;
    ctx->ctx.user.totals.csize = 0;
    ctx->ctx.user.totals.num_files = 0;
    ctx->buf = ((void*)0);
    ctx->head = 0;
    ctx->tail = 0;
    ctx->size = 0;

    return ctx;
}
