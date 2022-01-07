
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int threads; TYPE_2__** thread_ctx; TYPE_3__* plane_ctx; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_7__ {struct TYPE_7__*** SC; } ;
typedef TYPE_2__ chroma_smooth_thread_context_t ;
struct TYPE_8__ {int steps; } ;
typedef TYPE_3__ chroma_smooth_plane_context_t ;


 int free (TYPE_2__**) ;

__attribute__((used)) static void chroma_smooth_thread_close(hb_filter_private_t *pv)
{
    int c, z;
    for (c = 0; c < 3; c++)
    {
        chroma_smooth_plane_context_t * ctx = &pv->plane_ctx[c];
        for (int t = 0; t < pv->threads; t++)
        {
            chroma_smooth_thread_context_t * tctx = &pv->thread_ctx[t][c];

            if (c)
            {
                for (z = 0; z < 2 * ctx->steps; z++)
                {
                    free(tctx->SC[z]);
                    tctx->SC[z] = ((void*)0);
                }
            }
        }
    }
    free(pv->thread_ctx);
}
