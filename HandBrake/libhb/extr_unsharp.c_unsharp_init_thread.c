
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ** SC; } ;
typedef TYPE_1__ unsharp_thread_context_t ;
typedef int unsharp_thread_context3_t ;
struct TYPE_10__ {int steps; int width; int pix_fmt; } ;
typedef TYPE_2__ unsharp_plane_context_t ;
struct TYPE_11__ {int threads; TYPE_1__** thread_ctx; TYPE_2__* plane_ctx; } ;
typedef TYPE_3__ hb_filter_private_t ;
struct TYPE_12__ {TYPE_3__* private_data; } ;
typedef TYPE_4__ hb_filter_object_t ;


 TYPE_1__** calloc (int,int) ;
 int hb_error (char*) ;
 int hb_image_width (int ,int ,int) ;
 int * malloc (int) ;
 int unsharp_close (TYPE_4__*) ;
 int unsharp_thread_close (TYPE_3__*) ;

__attribute__((used)) static int unsharp_init_thread(hb_filter_object_t *filter, int threads)
{
    hb_filter_private_t * pv = filter->private_data;

    unsharp_thread_close(pv);
    pv->thread_ctx = calloc(threads, sizeof(unsharp_thread_context3_t));
    pv->threads = threads;
    for (int c = 0; c < 3; c++)
    {
        unsharp_plane_context_t * ctx = &pv->plane_ctx[c];
        int w = hb_image_width(ctx->pix_fmt, ctx->width, c);

        for (int t = 0; t < threads; t++)
        {
            unsharp_thread_context_t * tctx = &pv->thread_ctx[t][c];
            int z;
            for (z = 0; z < 2 * ctx->steps; z++)
            {
                tctx->SC[z] = malloc(sizeof(*(tctx->SC[z])) *
                                     (w + 2 * ctx->steps));
                if (tctx->SC[z] == ((void*)0))
                {
                    hb_error("Unsharp calloc failed");
                    unsharp_close(filter);
                    return -1;
                }
            }
        }
    }
    return 0;
}
