
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int script_initialized; TYPE_5__* current_sub; int ssaTrack; } ;
typedef TYPE_3__ hb_filter_private_t ;
struct TYPE_18__ {TYPE_1__* subtitle; TYPE_3__* private_data; } ;
typedef TYPE_4__ hb_filter_object_t ;
struct TYPE_16__ {int flags; int start; long long stop; } ;
struct TYPE_19__ {TYPE_2__ s; } ;
typedef TYPE_5__ hb_buffer_t ;
struct TYPE_15__ {int fifo_out; int extradata_size; scalar_t__ extradata; } ;


 int AV_NOPTS_VALUE ;
 int ApplySSASubs (TYPE_3__*,TYPE_5__*) ;
 int HB_BUF_FLAG_EOF ;
 int HB_BUF_FLAG_EOS ;
 int HB_FILTER_DONE ;
 int HB_FILTER_OK ;
 int ass_process_codec_private (int ,char*,int ) ;
 int hb_buffer_close (TYPE_5__**) ;
 TYPE_5__* hb_fifo_get (int ) ;
 int process_sub (TYPE_3__*,TYPE_5__*) ;

__attribute__((used)) static int textsub_work(hb_filter_object_t * filter,
                    hb_buffer_t ** buf_in,
                    hb_buffer_t ** buf_out)
{
    hb_filter_private_t * pv = filter->private_data;
    hb_buffer_t * in = *buf_in;
    hb_buffer_t * sub;

    if (!pv->script_initialized)
    {
        ass_process_codec_private(pv->ssaTrack,
                                  (char*)filter->subtitle->extradata,
                                  filter->subtitle->extradata_size);
        pv->script_initialized = 1;
    }

    if (in->s.flags & HB_BUF_FLAG_EOF)
    {
        *buf_in = ((void*)0);
        *buf_out = in;
        return HB_FILTER_DONE;
    }

    int in_start_ms = in->s.start / 90;



    while ((sub = hb_fifo_get(filter->subtitle->fifo_out)))
    {
        if (sub->s.flags & HB_BUF_FLAG_EOF)
        {
            hb_buffer_close(&sub);
            if (pv->current_sub != ((void*)0))
            {

                pv->current_sub->s.stop = pv->current_sub->s.start +
                                          90000LL * 10;
                process_sub(pv, pv->current_sub);
                hb_buffer_close(&pv->current_sub);
            }
            break;
        }



        sub->s.start /= 90;
        if (sub->s.stop != AV_NOPTS_VALUE)
        {
            sub->s.stop /= 90;
        }







        if (pv->current_sub != ((void*)0))
        {


            pv->current_sub->s.stop = sub->s.start;
            process_sub(pv, pv->current_sub);
            hb_buffer_close(&pv->current_sub);
        }
        if (sub->s.flags & HB_BUF_FLAG_EOS)
        {


            hb_buffer_close(&sub);
        }
        else if (sub->s.stop == AV_NOPTS_VALUE)
        {


            pv->current_sub = sub;
            pv->current_sub->s.stop = pv->current_sub->s.start;
        }
        else
        {


            process_sub(pv, sub);
            hb_buffer_close(&sub);
        }
    }
    if (pv->current_sub != ((void*)0) && pv->current_sub->s.start <= in_start_ms)
    {



        pv->current_sub->s.start = pv->current_sub->s.stop;
        pv->current_sub->s.stop = in_start_ms + 1;
        process_sub(pv, pv->current_sub);
    }

    ApplySSASubs(pv, in);
    *buf_in = ((void*)0);
    *buf_out = in;

    return HB_FILTER_OK;
}
