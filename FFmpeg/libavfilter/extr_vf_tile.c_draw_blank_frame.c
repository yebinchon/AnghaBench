
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int current; int blank; int draw; } ;
typedef TYPE_1__ TileContext ;
struct TYPE_11__ {TYPE_3__** inputs; TYPE_1__* priv; } ;
struct TYPE_10__ {int h; int w; } ;
struct TYPE_9__ {int linesize; int data; } ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int ff_fill_rectangle (int *,int *,int ,int ,unsigned int,unsigned int,int ,int ) ;
 int get_tile_pos (TYPE_4__*,unsigned int*,unsigned int*,int ) ;

__attribute__((used)) static void draw_blank_frame(AVFilterContext *ctx, AVFrame *out_buf)
{
    TileContext *tile = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    unsigned x0, y0;

    get_tile_pos(ctx, &x0, &y0, tile->current);
    ff_fill_rectangle(&tile->draw, &tile->blank,
                      out_buf->data, out_buf->linesize,
                      x0, y0, inlink->w, inlink->h);
    tile->current++;
}
