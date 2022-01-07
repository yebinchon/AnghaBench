
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * swresample; int * list; struct TYPE_8__* input_buf; struct TYPE_8__* output_buf; TYPE_3__* context; } ;
typedef TYPE_1__ hb_work_private_t ;
struct TYPE_9__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_work_object_t ;
struct TYPE_10__ {int * codec; } ;


 int Finalize (TYPE_2__*) ;
 int avcodec_flush_buffers (TYPE_3__*) ;
 int free (TYPE_1__*) ;
 int hb_avcodec_free_context (TYPE_3__**) ;
 int hb_deep_log (int,char*) ;
 int hb_list_empty (int **) ;
 int swr_free (int **) ;

__attribute__((used)) static void encavcodecaClose(hb_work_object_t * w)
{
    hb_work_private_t * pv = w->private_data;

    if (pv != ((void*)0))
    {
        if (pv->context != ((void*)0))
        {
            Finalize(w);
            hb_deep_log(2, "encavcodecaudio: closing libavcodec");
            if (pv->context->codec != ((void*)0)) {
                avcodec_flush_buffers(pv->context);
            }
            hb_avcodec_free_context(&pv->context);
        }

        if (pv->output_buf != ((void*)0))
        {
            free(pv->output_buf);
        }
        if (pv->input_buf != ((void*)0) && pv->input_buf != pv->output_buf)
        {
            free(pv->input_buf);
        }
        pv->output_buf = pv->input_buf = ((void*)0);

        if (pv->list != ((void*)0))
        {
            hb_list_empty(&pv->list);
        }

        if (pv->swresample != ((void*)0))
        {
            swr_free(&pv->swresample);
        }

        free(pv);
        w->private_data = ((void*)0);
    }
}
