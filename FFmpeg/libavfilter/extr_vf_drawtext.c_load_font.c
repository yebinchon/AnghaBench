
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int fontfile; } ;
typedef TYPE_1__ DrawTextContext ;
typedef TYPE_2__ AVFilterContext ;


 int load_font_file (TYPE_2__*,int ,int ) ;
 int load_font_fontconfig (TYPE_2__*) ;

__attribute__((used)) static int load_font(AVFilterContext *ctx)
{
    DrawTextContext *s = ctx->priv;
    int err;


    err = load_font_file(ctx, s->fontfile, 0);
    if (!err)
        return 0;





    return err;
}
