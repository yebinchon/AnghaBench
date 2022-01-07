
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int in_style; } ;
typedef TYPE_1__ hb_tx3g_style_context_t ;


 int free (TYPE_1__*) ;
 int hb_subtitle_style_close (int *) ;

void hb_tx3g_style_close(hb_tx3g_style_context_t ** pctx)
{
    if (pctx == ((void*)0) || *pctx == ((void*)0))
    {
        return;
    }
    hb_tx3g_style_context_t * ctx = *pctx;

    hb_subtitle_style_close(&ctx->in_style);
    free(ctx);
    *pctx = ((void*)0);
}
