
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_19__ {scalar_t__* last_start; scalar_t__* last_stop; int* lost_time; int total_lost_time; int extended_frames; int total_gained_time; int delay_queue; int drops; } ;
typedef TYPE_2__ hb_filter_private_t ;
struct TYPE_20__ {TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_filter_object_t ;
struct TYPE_18__ {int flags; scalar_t__ start; scalar_t__ stop; } ;
struct TYPE_21__ {TYPE_1__ s; } ;
typedef TYPE_4__ hb_buffer_t ;
typedef int hb_buffer_list_t ;


 int HB_BUF_FLAG_EOF ;
 int HB_FILTER_DONE ;
 int HB_FILTER_OK ;
 TYPE_4__* adjust_frame_rate (TYPE_2__*,TYPE_4__*) ;
 TYPE_4__* flush_frames (TYPE_2__*) ;
 int hb_buffer_close (TYPE_4__**) ;
 int hb_buffer_list_append (int *,TYPE_4__*) ;
 TYPE_4__* hb_buffer_list_clear (int *) ;
 TYPE_4__* hb_fifo_get (int ) ;
 int hb_fifo_push (int ,TYPE_4__*) ;
 int hb_fifo_size (int ) ;

__attribute__((used)) static int hb_vfr_work( hb_filter_object_t * filter,
                        hb_buffer_t ** buf_in,
                        hb_buffer_t ** buf_out )
{
    hb_filter_private_t * pv = filter->private_data;
    hb_buffer_t * in = *buf_in;
    hb_buffer_t * out = ((void*)0);

    *buf_in = ((void*)0);
    *buf_out = ((void*)0);

    if (in->s.flags & HB_BUF_FLAG_EOF)
    {
        hb_buffer_list_t list;
        hb_buffer_t * next;
        int counter = 2;


        hb_buffer_list_clear(&list);
        while ((next = hb_fifo_get(pv->delay_queue)) != ((void*)0))
        {
            next->s.start = pv->last_start[counter];
            next->s.stop = pv->last_stop[counter--];

            hb_buffer_list_append(&list, adjust_frame_rate(pv, next));
        }
        hb_buffer_list_append(&list, flush_frames(pv));
        hb_buffer_list_append(&list, in);
        *buf_out = hb_buffer_list_clear(&list);
        return HB_FILTER_DONE;
    }



    if (hb_fifo_size(pv->delay_queue) > 0 && in->s.start > pv->last_stop[0])
    {
        int64_t temp_duration = in->s.start - pv->last_stop[0];
        pv->lost_time[0] += (temp_duration / 4);
        pv->lost_time[1] += (temp_duration / 4);
        pv->lost_time[2] += (temp_duration / 4);
        pv->lost_time[3] += ( temp_duration - 3 * (temp_duration / 4) );

        pv->total_lost_time += temp_duration;
    }
    else if ( in->s.stop <= pv->last_stop[0] )
    {


        ++pv->drops;
        hb_buffer_close(&in);
        return HB_FILTER_OK;
    }



    int i;
    for( i = 3; i >= 1; i-- )
    {
        pv->last_start[i] = pv->last_start[i-1];
        pv->last_stop[i] = pv->last_stop[i-1];
    }



    if (hb_fifo_size(pv->delay_queue) == 0)
    {
        pv->last_start[0] = in->s.start;
        pv->last_stop[0] = in->s.stop;
    }
    else
    {
        pv->last_start[0] = pv->last_stop[1];
        pv->last_stop[0] = pv->last_start[0] + (in->s.stop - in->s.start);
    }

    hb_fifo_push( pv->delay_queue, in );







    if (hb_fifo_size(pv->delay_queue) < 4)
    {
        *buf_out = ((void*)0);
        return HB_FILTER_OK;
    }

    out = hb_fifo_get(pv->delay_queue);



    if( pv->lost_time[3] > 0 )
    {
        int time_shift = 0;

        for( i = 3; i >= 0; i-- )
        {
            pv->last_start[i] += time_shift;
            pv->last_stop[i] += pv->lost_time[i] + time_shift;


            pv->total_gained_time += pv->lost_time[i];
            time_shift += pv->lost_time[i];

            pv->lost_time[i] = 0;


            pv->extended_frames++;
        }
    }
    out->s.start = pv->last_start[3];
    out->s.stop = pv->last_stop[3];

    *buf_out = adjust_frame_rate(pv, out);

    return HB_FILTER_OK;
}
