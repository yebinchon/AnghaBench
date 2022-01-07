
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ max_len; scalar_t__ min_len; int in_queue; } ;
typedef TYPE_1__ sync_stream_t ;
struct TYPE_5__ {int stream_count; TYPE_1__* streams; } ;
typedef TYPE_2__ sync_common_t ;


 scalar_t__ hb_list_count (int ) ;

__attribute__((used)) static int fillQueues( sync_common_t * common )
{
    int ii, wait = 0, abort = 0;

    for (ii = 0; ii < common->stream_count; ii++)
    {
        sync_stream_t *stream = &common->streams[ii];



        if (hb_list_count(stream->in_queue) > stream->max_len)
        {
            abort = 1;
        }
        if (hb_list_count(stream->in_queue) <= stream->min_len)
        {
            wait = 1;
        }
    }
    return !wait || abort;
}
