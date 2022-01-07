
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int low; int help; int range; } ;
struct TYPE_5__ {TYPE_1__ rc; } ;
typedef TYPE_2__ APEContext ;



__attribute__((used)) static inline void range_decode_update(APEContext *ctx, int sy_f, int lt_f)
{
    ctx->rc.low -= ctx->rc.help * lt_f;
    ctx->rc.range = ctx->rc.help * sy_f;
}
