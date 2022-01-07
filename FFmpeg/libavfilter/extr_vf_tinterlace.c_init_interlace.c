
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {scalar_t__ mode; } ;
typedef TYPE_1__ TInterlaceContext ;
typedef TYPE_2__ AVFilterContext ;


 scalar_t__ MODE_BFF ;
 scalar_t__ MODE_INTERLEAVE_TOP ;

__attribute__((used)) static int init_interlace(AVFilterContext *ctx)
{
    TInterlaceContext *tinterlace = ctx->priv;

    if (tinterlace->mode <= MODE_BFF)
        tinterlace->mode += MODE_INTERLEAVE_TOP;

    return 0;
}
