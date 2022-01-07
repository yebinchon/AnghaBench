
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int color_range; int color_matrix; int color_transfer; int color_prim; int pix_fmt; } ;
struct TYPE_16__ {int next_frame; int* prefilter; int* nframes; int * diff_max; int * weight_fact_table; int * exptable; int * range; int * patch_size; int * origin_tune; int * strength; int functions; TYPE_2__ output; TYPE_6__* frame; } ;
typedef TYPE_4__ hb_filter_private_t ;
struct TYPE_13__ {int color_range; int color_matrix; int color_transfer; int color_prim; } ;
struct TYPE_17__ {int s; TYPE_3__* plane; TYPE_1__ f; } ;
typedef TYPE_5__ hb_buffer_t ;
typedef int hb_buffer_list_t ;
struct TYPE_18__ {int s; int * plane; int height; int width; } ;
struct TYPE_15__ {int height; int stride; int width; int data; } ;
typedef int NLMeansFunctions ;
typedef TYPE_6__ Frame ;


 int NLMEANS_PREFILTER_MODE_PASSTHRU ;
 int hb_buffer_list_append (int *,TYPE_5__*) ;
 TYPE_5__* hb_buffer_list_clear (int *) ;
 TYPE_5__* hb_frame_buffer_init (int ,int ,int ) ;
 int nlmeans_deborder (int *,int ,int ,int ,int ) ;
 int nlmeans_plane (int *,TYPE_6__*,int,int,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int nlmeans_prefilter (int *,int) ;

__attribute__((used)) static hb_buffer_t * nlmeans_filter_flush(hb_filter_private_t *pv)
{
    hb_buffer_list_t list;

    hb_buffer_list_clear(&list);
    for (int f = 0; f < pv->next_frame; f++)
    {
        Frame *frame = &pv->frame[f];
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

            int nframes = pv->next_frame - f;
            if (pv->nframes[c] < nframes)
            {
                nframes = pv->nframes[c];
            }

            nlmeans_plane(functions,
                          frame,
                          pv->prefilter[c],
                          c,
                          nframes,
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
        buf->s = frame->s;
        hb_buffer_list_append(&list, buf);
    }
    return hb_buffer_list_clear(&list);
}
