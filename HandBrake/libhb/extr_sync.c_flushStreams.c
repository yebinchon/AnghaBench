
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ done; int flush; } ;
typedef TYPE_1__ sync_stream_t ;
struct TYPE_6__ {int stream_count; TYPE_1__* streams; } ;
typedef TYPE_2__ sync_common_t ;


 int streamFlush (TYPE_1__*) ;

__attribute__((used)) static void flushStreams( sync_common_t * common )
{
    int ii;


    for (ii = 0; ii < common->stream_count; ii++)
    {
        sync_stream_t * stream = &common->streams[ii];
        if (!stream->done && !stream->flush)
        {
            return;
        }
    }


    for (ii = 0; ii < common->stream_count; ii++)
    {
        sync_stream_t * stream = &common->streams[ii];
        if (stream->done)
        {
            continue;
        }
        streamFlush(stream);
    }
}
