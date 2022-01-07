
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; int in_queue; } ;
typedef TYPE_2__ sync_stream_t ;
struct TYPE_6__ {double start; double duration; double stop; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
typedef TYPE_3__ hb_buffer_t ;


 scalar_t__ SYNC_TYPE_VIDEO ;
 int hb_list_count (int ) ;
 TYPE_3__* hb_list_item (int ,int) ;

__attribute__((used)) static void updateDuration( sync_stream_t * stream )
{


    if (stream->type == SYNC_TYPE_VIDEO)
    {
        int count = hb_list_count(stream->in_queue);
        if (count >= 2)
        {
            hb_buffer_t * buf1 = hb_list_item(stream->in_queue, count - 1);
            hb_buffer_t * buf2 = hb_list_item(stream->in_queue, count - 2);
            double duration = buf1->s.start - buf2->s.start;
            if (duration > 0)
            {
                buf2->s.duration = duration;
                buf2->s.stop = buf1->s.start;
            }
            else
            {
                buf2->s.duration = 0.;
                buf2->s.start = buf2->s.stop = buf1->s.start;
            }
        }
    }
}
