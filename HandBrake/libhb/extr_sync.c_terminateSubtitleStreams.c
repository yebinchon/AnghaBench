
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int done; int fifo_in; int fifo_out; } ;
typedef TYPE_1__ sync_stream_t ;
struct TYPE_5__ {int stream_count; TYPE_1__* streams; } ;
typedef TYPE_2__ sync_common_t ;


 scalar_t__ SYNC_TYPE_SUBTITLE ;
 int fifo_push (int ,int ) ;
 int hb_buffer_eof_init () ;

__attribute__((used)) static void terminateSubtitleStreams( sync_common_t * common )
{
    int ii;


    for (ii = 0; ii < common->stream_count; ii++)
    {
        sync_stream_t * stream = &common->streams[ii];
        if (stream->type == SYNC_TYPE_SUBTITLE)
        {
            continue;
        }
        if (!stream->done)
        {
            return;
        }
    }


    for (ii = 0; ii < common->stream_count; ii++)
    {
        sync_stream_t * stream = &common->streams[ii];
        if (stream->done || stream->type != SYNC_TYPE_SUBTITLE)
        {
            continue;
        }
        fifo_push(stream->fifo_out, hb_buffer_eof_init());
        fifo_push(stream->fifo_in, hb_buffer_eof_init());
        stream->done = 1;
    }
}
