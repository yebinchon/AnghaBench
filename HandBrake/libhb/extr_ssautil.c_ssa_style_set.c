
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
struct TYPE_6__ {int styles_count; int style_default; TYPE_1__* styles; TYPE_1__ current; } ;
typedef TYPE_2__ hb_subtitle_style_context_t ;


 int ssa_style_reset (TYPE_2__*) ;
 int strcasecmp (int ,char const*) ;

__attribute__((used)) static int ssa_style_set(hb_subtitle_style_context_t * ctx, const char * style)
{
    int ii;

    if (ctx->styles != ((void*)0) && style != ((void*)0) && style[0] != 0)
    {
        for (ii = 0; ii < ctx->styles_count; ii++)
        {
            if (!strcasecmp(ctx->styles[ii].name, style))
            {
                ctx->current = ctx->styles[ii];
                return ii;
            }
        }
    }
    ssa_style_reset(ctx);
    return ctx->style_default;
}
