
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; int in_queue; } ;
typedef TYPE_2__ sync_stream_t ;
typedef scalar_t__ int64_t ;
struct TYPE_8__ {scalar_t__ start; scalar_t__ duration; scalar_t__ stop; } ;
struct TYPE_10__ {TYPE_1__ s; } ;
typedef TYPE_3__ hb_buffer_t ;


 scalar_t__ AV_NOPTS_VALUE ;
 scalar_t__ SYNC_TYPE_VIDEO ;
 int hb_list_add (int ,TYPE_3__*) ;
 int hb_list_count (int ) ;
 TYPE_3__* hb_list_item (int ,int) ;

__attribute__((used)) static void SortedQueueBuffer( sync_stream_t * stream, hb_buffer_t * buf )
{
    int64_t start;
    int ii, count;

    start = buf->s.start;
    hb_list_add(stream->in_queue, buf);





    count = hb_list_count(stream->in_queue);
    for (ii = count - 2; ii >= 0; ii--)
    {
        buf = hb_list_item(stream->in_queue, ii);
        if (buf->s.start < start || start == AV_NOPTS_VALUE)
        {
            break;
        }
    }
    if (ii < count - 2)
    {
        hb_buffer_t * prev = ((void*)0);
        int jj;




        if (ii >= 0)
        {
            prev = hb_list_item(stream->in_queue, ii);
        }
        for (jj = ii + 1; jj < count; jj++)
        {
            int64_t tmp_start;

            buf = hb_list_item(stream->in_queue, jj);
            tmp_start = buf->s.start;
            buf->s.start = start;
            start = tmp_start;
            if (stream->type == SYNC_TYPE_VIDEO && prev != ((void*)0))
            {

                prev->s.duration = buf->s.start - prev->s.start;
                prev->s.stop = buf->s.start;
            }
            prev = buf;
        }
    }
}
