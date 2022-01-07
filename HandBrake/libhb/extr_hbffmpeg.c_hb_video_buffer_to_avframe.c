
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int color_range; int color_matrix; int color_transfer; int color_prim; int fmt; int height; int width; } ;
struct TYPE_9__ {int flags; int combed; int duration; int start; } ;
struct TYPE_11__ {TYPE_3__ f; TYPE_2__ s; TYPE_1__* plane; } ;
typedef TYPE_4__ hb_buffer_t ;
struct TYPE_12__ {int interlaced_frame; int top_field_first; int color_range; int colorspace; int color_trc; int color_primaries; int format; int height; int width; int reordered_opaque; int pts; int * linesize; int * data; } ;
struct TYPE_8__ {int stride; int data; } ;
typedef TYPE_5__ AVFrame ;


 int PIC_FLAG_TOP_FIELD_FIRST ;
 int hb_colr_mat_hb_to_ff (int ) ;
 int hb_colr_pri_hb_to_ff (int ) ;
 int hb_colr_tra_hb_to_ff (int ) ;

void hb_video_buffer_to_avframe(AVFrame *frame, hb_buffer_t * buf)
{
    frame->data[0] = buf->plane[0].data;
    frame->data[1] = buf->plane[1].data;
    frame->data[2] = buf->plane[2].data;
    frame->linesize[0] = buf->plane[0].stride;
    frame->linesize[1] = buf->plane[1].stride;
    frame->linesize[2] = buf->plane[2].stride;

    frame->pts = buf->s.start;
    frame->reordered_opaque = buf->s.duration;
    frame->width = buf->f.width;
    frame->height = buf->f.height;
    frame->format = buf->f.fmt;
    frame->interlaced_frame = !!buf->s.combed;
    frame->top_field_first = !!(buf->s.flags & PIC_FLAG_TOP_FIELD_FIRST);

    frame->format = buf->f.fmt;
    frame->color_primaries = hb_colr_pri_hb_to_ff(buf->f.color_prim);
    frame->color_trc = hb_colr_tra_hb_to_ff(buf->f.color_transfer);
    frame->colorspace = hb_colr_mat_hb_to_ff(buf->f.color_matrix);
    frame->color_range = buf->f.color_range;
}
