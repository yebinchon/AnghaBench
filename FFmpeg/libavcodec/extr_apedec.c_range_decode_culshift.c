
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int help; int range; int low; } ;
struct TYPE_6__ {TYPE_1__ rc; } ;
typedef TYPE_2__ APEContext ;


 int range_dec_normalize (TYPE_2__*) ;

__attribute__((used)) static inline int range_decode_culshift(APEContext *ctx, int shift)
{
    range_dec_normalize(ctx);
    ctx->rc.help = ctx->rc.range >> shift;
    return ctx->rc.low / ctx->rc.help;
}
