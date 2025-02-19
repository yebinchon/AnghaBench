
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int unsharp_thread_context_t ;
typedef int unsharp_plane_context_t ;
struct TYPE_13__ {int color_range; int color_matrix; int color_transfer; int color_prim; int pix_fmt; } ;
struct TYPE_16__ {int ** thread_ctx; int * plane_ctx; TYPE_2__ output; } ;
typedef TYPE_5__ hb_filter_private_t ;
struct TYPE_17__ {TYPE_5__* private_data; } ;
typedef TYPE_6__ hb_filter_object_t ;
struct TYPE_15__ {int flags; } ;
struct TYPE_12__ {int color_range; int color_matrix; int color_transfer; int color_prim; int height; int width; } ;
struct TYPE_18__ {TYPE_4__ s; TYPE_3__* plane; TYPE_1__ f; } ;
typedef TYPE_7__ hb_buffer_t ;
struct TYPE_14__ {int stride; int height; int width; int data; } ;


 int HB_BUF_FLAG_EOF ;
 int HB_FILTER_DONE ;
 int HB_FILTER_OK ;
 TYPE_7__* hb_frame_buffer_init (int ,int ,int ) ;
 int unsharp (int ,int ,int ,int ,int ,int *,int *) ;

__attribute__((used)) static int unsharp_work_thread(hb_filter_object_t *filter,
                               hb_buffer_t ** buf_in,
                               hb_buffer_t ** buf_out, int thread)
{
    hb_filter_private_t *pv = filter->private_data;
    hb_buffer_t *in = *buf_in, *out;

    if (in->s.flags & HB_BUF_FLAG_EOF)
    {
        *buf_out = in;
        *buf_in = ((void*)0);
        return HB_FILTER_DONE;
    }

    out = hb_frame_buffer_init(pv->output.pix_fmt, in->f.width, in->f.height);
    out->f.color_prim = pv->output.color_prim;
    out->f.color_transfer = pv->output.color_transfer;
    out->f.color_matrix = pv->output.color_matrix;
    out->f.color_range = pv->output.color_range ;

    int c;
    for (c = 0; c < 3; c++)
    {
        unsharp_plane_context_t * ctx = &pv->plane_ctx[c];
        unsharp_thread_context_t * tctx = &pv->thread_ctx[thread][c];
        unsharp(in->plane[c].data,
                out->plane[c].data,
                in->plane[c].width,
                in->plane[c].height,
                in->plane[c].stride,
                ctx, tctx);
    }

    out->s = in->s;
    *buf_out = out;

    return HB_FILTER_OK;
}
