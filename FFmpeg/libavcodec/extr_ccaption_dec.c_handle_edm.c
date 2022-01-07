
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct Screen {scalar_t__ row_used; } ;
typedef int int64_t ;
struct TYPE_4__ {int active_screen; scalar_t__ real_time; struct Screen* screen; } ;
typedef TYPE_1__ CCaptionSubContext ;


 int reap_screen (TYPE_1__*,int ) ;

__attribute__((used)) static void handle_edm(CCaptionSubContext *ctx, int64_t pts)
{
    struct Screen *screen = ctx->screen + ctx->active_screen;



    if (!ctx->real_time)
        reap_screen(ctx, pts);

    screen->row_used = 0;



    if (ctx->real_time)
        reap_screen(ctx, pts);
}
