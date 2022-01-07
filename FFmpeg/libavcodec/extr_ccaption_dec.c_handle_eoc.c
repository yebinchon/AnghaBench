
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int active_screen; scalar_t__ real_time; scalar_t__ cursor_column; } ;
typedef TYPE_1__ CCaptionSubContext ;


 int handle_edm (TYPE_1__*,int ) ;
 int reap_screen (TYPE_1__*,int ) ;

__attribute__((used)) static void handle_eoc(CCaptionSubContext *ctx, int64_t pts)
{


    if (!ctx->real_time)
        handle_edm(ctx,pts);

    ctx->active_screen = !ctx->active_screen;
    ctx->cursor_column = 0;



    if (ctx->real_time)
        reap_screen(ctx, pts);
}
