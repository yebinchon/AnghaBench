
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {scalar_t__ hb_stream_type; } ;
typedef TYPE_1__ hb_stream_t ;


 scalar_t__ ffmpeg ;
 int ffmpeg_seek_ts (TYPE_1__*,int ) ;

int hb_stream_seek_ts( hb_stream_t * stream, int64_t ts )
{
    if ( stream->hb_stream_type == ffmpeg )
    {
        return ffmpeg_seek_ts( stream, ts );
    }
    return -1;
}
