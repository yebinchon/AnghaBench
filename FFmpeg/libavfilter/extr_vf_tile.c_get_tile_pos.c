
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int w; unsigned int margin; unsigned int const padding; } ;
typedef TYPE_1__ TileContext ;
struct TYPE_7__ {TYPE_2__** inputs; TYPE_1__* priv; } ;
struct TYPE_6__ {unsigned int const w; unsigned int const h; } ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;



__attribute__((used)) static void get_tile_pos(AVFilterContext *ctx, unsigned *x, unsigned *y, unsigned current)
{
    TileContext *tile = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    const unsigned tx = current % tile->w;
    const unsigned ty = current / tile->w;

    *x = tile->margin + (inlink->w + tile->padding) * tx;
    *y = tile->margin + (inlink->h + tile->padding) * ty;
}
