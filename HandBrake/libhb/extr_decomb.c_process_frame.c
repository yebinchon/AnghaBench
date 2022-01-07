
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_15__ ;


struct TYPE_19__ {int color_range; int color_matrix; int color_transfer; int color_prim; } ;
struct TYPE_21__ {int mode; int parity; int tff; int out_list; TYPE_15__** ref; TYPE_3__ output; int unfiltered; int frames; } ;
typedef TYPE_5__ hb_filter_private_t ;
struct TYPE_20__ {scalar_t__ combed; int flags; long long stop; long long start; scalar_t__ new_chap; } ;
struct TYPE_18__ {int color_range; int color_matrix; int color_transfer; int color_prim; } ;
struct TYPE_22__ {TYPE_4__ s; TYPE_2__ f; } ;
typedef TYPE_6__ hb_buffer_t ;
struct TYPE_17__ {int height; int width; int fmt; } ;
struct TYPE_16__ {TYPE_4__ s; TYPE_1__ f; } ;


 scalar_t__ HB_COMB_NONE ;
 int MODE_DECOMB_BOB ;
 int MODE_DECOMB_SELECTIVE ;
 int PIC_FLAG_TOP_FIELD_FIRST ;
 TYPE_6__* hb_buffer_dup (TYPE_15__*) ;
 int hb_buffer_list_append (int *,TYPE_6__*) ;
 TYPE_6__* hb_buffer_list_head (int *) ;
 TYPE_6__* hb_buffer_list_tail (int *) ;
 TYPE_6__* hb_frame_buffer_init (int ,int ,int ) ;
 int yadif_filter (TYPE_5__*,TYPE_6__*,int,int) ;

__attribute__((used)) static void process_frame( hb_filter_private_t * pv )
{
    if ((pv->mode & MODE_DECOMB_SELECTIVE) &&
        pv->ref[1]->s.combed == HB_COMB_NONE)
    {

        hb_buffer_t * buf = hb_buffer_dup(pv->ref[1]);
        hb_buffer_list_append(&pv->out_list, buf);
        pv->frames++;
        pv->unfiltered++;
    }
    else
    {

        int tff;
        if (pv->parity < 0)
        {
            tff = !!(pv->ref[1]->s.flags & PIC_FLAG_TOP_FIELD_FIRST);
        }
        else
        {
            tff = (pv->parity & 1) ^ 1;
        }


        int frame, num_frames = 1;
        if (pv->mode & MODE_DECOMB_BOB)
        {
            num_frames = 2;
        }




        for (frame = 0; frame < num_frames; frame++)
        {
            hb_buffer_t * buf;
            int parity = frame ^ tff ^ 1;


            pv->tff = !parity;

            buf = hb_frame_buffer_init(pv->ref[1]->f.fmt,
                                       pv->ref[1]->f.width,
                                       pv->ref[1]->f.height);
            buf->f.color_prim = pv->output.color_prim;
            buf->f.color_transfer = pv->output.color_transfer;
            buf->f.color_matrix = pv->output.color_matrix;
            buf->f.color_range = pv->output.color_range ;
            yadif_filter(pv, buf, parity, tff);


            buf->s = pv->ref[1]->s;

            hb_buffer_list_append(&pv->out_list, buf);
        }



        if (pv->mode & MODE_DECOMB_BOB)
        {
            hb_buffer_t *first = hb_buffer_list_head(&pv->out_list);
            hb_buffer_t *second = hb_buffer_list_tail(&pv->out_list);
            first->s.stop -= (first->s.stop - first->s.start) / 2LL;
            second->s.start = first->s.stop;
            second->s.new_chap = 0;
        }
    }
}
