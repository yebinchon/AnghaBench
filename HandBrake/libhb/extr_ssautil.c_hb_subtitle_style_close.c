
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int styles_count; struct TYPE_4__* styles; struct TYPE_4__* font_name; struct TYPE_4__* name; } ;
typedef TYPE_1__ hb_subtitle_style_context_t ;


 int free (TYPE_1__*) ;

void hb_subtitle_style_close(hb_subtitle_style_context_t ** pctx)
{
    if (pctx == ((void*)0) || *pctx == ((void*)0))
    {
        return;
    }
    hb_subtitle_style_context_t * ctx = *pctx;

    if (ctx->styles != ((void*)0))
    {
        int ii;

        for (ii = 0; ii < ctx->styles_count; ii++)
        {
            free(ctx->styles[ii].name);
            free(ctx->styles[ii].font_name);
        }
    }
    free(ctx->styles);
    free(ctx);
    *pctx = ((void*)0);
}
