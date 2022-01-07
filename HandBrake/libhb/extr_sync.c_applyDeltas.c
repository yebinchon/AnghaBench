
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ next_pts; scalar_t__ type; int delta_list; int pts_slip; int in_queue; } ;
typedef TYPE_2__ sync_stream_t ;
struct TYPE_11__ {scalar_t__ pts; scalar_t__ delta; } ;
typedef TYPE_3__ sync_delta_t ;
struct TYPE_12__ {int stream_count; TYPE_2__* streams; } ;
typedef TYPE_4__ sync_common_t ;
typedef scalar_t__ int64_t ;
struct TYPE_9__ {scalar_t__ start; scalar_t__ stop; scalar_t__ duration; } ;
struct TYPE_13__ {TYPE_1__ s; } ;
typedef TYPE_5__ hb_buffer_t ;


 scalar_t__ AV_NOPTS_VALUE ;
 scalar_t__ SYNC_TYPE_AUDIO ;
 scalar_t__ SYNC_TYPE_SUBTITLE ;
 scalar_t__ SYNC_TYPE_VIDEO ;
 int free (TYPE_3__*) ;
 int hb_list_count (int ) ;
 void* hb_list_item (int ,int) ;
 int hb_list_rem (int ,TYPE_3__*) ;

__attribute__((used)) static void applyDeltas( sync_common_t * common )
{
    int ii;


    for (ii = 0; ii < common->stream_count; ii++)
    {
        sync_stream_t * stream = &common->streams[ii];


        sync_delta_t * delta = hb_list_item(stream->delta_list, 0);
        if (delta != ((void*)0))
        {
            int jj, index = -1;
            int64_t prev_start, max = 0;
            hb_buffer_t * buf;

            prev_start = stream->next_pts;
            for (jj = 0; jj < hb_list_count(stream->in_queue); jj++)
            {
                buf = hb_list_item(stream->in_queue, jj);
                if (stream->type == SYNC_TYPE_SUBTITLE)
                {
                    if (buf->s.start > delta->pts)
                    {

                        index = jj;
                        break;
                    }
                }
                else if (buf->s.start > delta->pts)
                {

                    if (buf->s.start - prev_start > max)
                    {
                        max = buf->s.start - prev_start;
                        index = jj;
                    }
                    if (stream->type == SYNC_TYPE_AUDIO && max >= delta->delta)
                    {


                        break;
                    }
                }
                prev_start = buf->s.start;
            }

            if (index >= 0)
            {
                for (jj = index; jj < hb_list_count(stream->in_queue); jj++)
                {
                    buf = hb_list_item(stream->in_queue, jj);
                    buf->s.start -= delta->delta;
                    if (buf->s.stop != AV_NOPTS_VALUE)
                    {
                        buf->s.stop -= delta->delta;
                    }
                }


                if (stream->type == SYNC_TYPE_VIDEO && index > 0)
                {
                    buf = hb_list_item(stream->in_queue, index - 1);
                    if (buf->s.duration > delta->delta)
                    {
                        buf->s.duration -= delta->delta;
                        buf->s.stop -= delta->delta;
                    }
                    else
                    {
                        buf->s.duration = 0;
                        buf->s.stop = buf->s.start;
                    }
                }
                stream->pts_slip += delta->delta;
                hb_list_rem(stream->delta_list, delta);
                free(delta);
            }
        }
    }
}
