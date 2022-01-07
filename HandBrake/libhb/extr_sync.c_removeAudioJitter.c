
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {double next_pts; int in_queue; } ;
typedef TYPE_2__ sync_stream_t ;
struct TYPE_6__ {double start; double duration; double stop; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
typedef TYPE_3__ hb_buffer_t ;


 TYPE_3__* hb_list_item (int ,int) ;

__attribute__((used)) static void removeAudioJitter(sync_stream_t * stream, int stop)
{
    int ii;
    hb_buffer_t * buf;
    double next_pts;






    buf = hb_list_item(stream->in_queue, 0);
    buf->s.start = stream->next_pts;
    next_pts = stream->next_pts + buf->s.duration;
    for (ii = 1; ii <= stop; ii++)
    {

        buf->s.stop = next_pts;
        buf = hb_list_item(stream->in_queue, ii);
        buf->s.start = next_pts;
        next_pts += buf->s.duration;
    }
}
