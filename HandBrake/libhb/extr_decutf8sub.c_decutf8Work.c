
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int line; } ;
typedef TYPE_2__ hb_work_private_t ;
struct TYPE_11__ {TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_work_object_t ;
struct TYPE_9__ {int flags; scalar_t__ stop; int frametype; } ;
struct TYPE_12__ {TYPE_1__ s; } ;
typedef TYPE_4__ hb_buffer_t ;


 int HB_BUF_FLAG_EOF ;
 int HB_FRAME_SUBTITLE ;
 int HB_WORK_DONE ;
 int HB_WORK_OK ;
 int hb_log (char*) ;
 int hb_srt_to_ssa (TYPE_4__*,int ) ;

__attribute__((used)) static int decutf8Work(hb_work_object_t * w,
                       hb_buffer_t **buf_in, hb_buffer_t **buf_out)
{
    hb_work_private_t * pv = w->private_data;
    hb_buffer_t * in = *buf_in;
    hb_buffer_t *out = *buf_in;

    *buf_in = ((void*)0);
    if (in->s.flags & HB_BUF_FLAG_EOF)
    {
        *buf_out = in;
        return HB_WORK_DONE;
    }



    if (out->s.stop == 0)
    {
        hb_log("decutf8sub: subtitle packet lacks duration");
    }

    hb_srt_to_ssa(out, ++pv->line);
    out->s.frametype = HB_FRAME_SUBTITLE;
    *buf_out = out;

    return HB_WORK_OK;
}
