
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int segment; TYPE_6__* out; TYPE_5__* pv; } ;
typedef TYPE_4__ nlmeans_thread_arg_t ;
struct TYPE_11__ {int color_range; int color_matrix; int color_transfer; int color_prim; int pix_fmt; } ;
struct TYPE_14__ {int* prefilter; scalar_t__* strength; int taskset; TYPE_7__* frame; int * diff_max; int * weight_fact_table; int * exptable; int * range; int * patch_size; int * origin_tune; int * nframes; int functions; TYPE_2__ output; } ;
typedef TYPE_5__ hb_filter_private_t ;
struct TYPE_10__ {int color_range; int color_matrix; int color_transfer; int color_prim; } ;
struct TYPE_15__ {int s; TYPE_3__* plane; TYPE_1__ f; } ;
typedef TYPE_6__ hb_buffer_t ;
struct TYPE_16__ {int s; int * plane; int height; int width; } ;
struct TYPE_12__ {int height; int stride; int width; int data; } ;
typedef int NLMeansFunctions ;
typedef TYPE_7__ Frame ;


 int NLMEANS_PREFILTER_MODE_PASSTHRU ;
 int hb_deep_log (int,char*,int) ;
 TYPE_6__* hb_frame_buffer_init (int ,int ,int ) ;
 int nlmeans_deborder (int *,int ,int ,int ,int ) ;
 int nlmeans_plane (int *,TYPE_7__*,int,int,int ,int ,int ,int ,int ,scalar_t__,int ,int ,int ,int ,int ,int ) ;
 int nlmeans_prefilter (int *,int) ;
 int taskset_thread_complete (int *,int) ;
 scalar_t__ taskset_thread_stop (int *,int) ;
 int taskset_thread_wait4start (int *,int) ;

__attribute__((used)) static void nlmeans_filter_thread(void *thread_args_v)
{
    nlmeans_thread_arg_t *thread_data = thread_args_v;
    hb_filter_private_t *pv = thread_data->pv;
    int segment = thread_data->segment;

    hb_deep_log(3, "NLMeans thread started for segment %d", segment);

    while (1)
    {

        taskset_thread_wait4start(&pv->taskset, segment);

        if (taskset_thread_stop(&pv->taskset, segment))
        {
            break;
        }

        Frame *frame = &pv->frame[segment];
        hb_buffer_t *buf;
        buf = hb_frame_buffer_init(pv->output.pix_fmt,
                                   frame->width, frame->height);
        buf->f.color_prim = pv->output.color_prim;
        buf->f.color_transfer = pv->output.color_transfer;
        buf->f.color_matrix = pv->output.color_matrix;
        buf->f.color_range = pv->output.color_range ;


        NLMeansFunctions *functions = &pv->functions;

        for (int c = 0; c < 3; c++)
        {
            if (pv->prefilter[c] & NLMEANS_PREFILTER_MODE_PASSTHRU)
            {
                nlmeans_prefilter(&frame->plane[c], pv->prefilter[c]);
                nlmeans_deborder(&frame->plane[c], buf->plane[c].data,
                                 buf->plane[c].width, buf->plane[c].stride,
                                 buf->plane[c].height);
                continue;
            }
            if (pv->strength[c] == 0)
            {
                nlmeans_deborder(&frame->plane[c], buf->plane[c].data,
                                 buf->plane[c].width, buf->plane[c].stride,
                                 buf->plane[c].height);
                continue;
            }


            nlmeans_plane(functions,
                          frame,
                          pv->prefilter[c],
                          c,
                          pv->nframes[c],
                          buf->plane[c].data,
                          buf->plane[c].width,
                          buf->plane[c].stride,
                          buf->plane[c].height,
                          pv->strength[c],
                          pv->origin_tune[c],
                          pv->patch_size[c],
                          pv->range[c],
                          pv->exptable[c],
                          pv->weight_fact_table[c],
                          pv->diff_max[c]);
        }
        buf->s = pv->frame[segment].s;
        thread_data->out = buf;


        taskset_thread_complete(&pv->taskset, segment);
    }
    taskset_thread_complete(&pv->taskset, segment);
}
