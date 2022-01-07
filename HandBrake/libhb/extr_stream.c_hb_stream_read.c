
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ hb_stream_type; } ;
typedef TYPE_1__ hb_stream_t ;
typedef int hb_buffer_t ;


 scalar_t__ ffmpeg ;
 int * hb_ffmpeg_read (TYPE_1__*) ;
 int * hb_ps_stream_decode (TYPE_1__*) ;
 int * hb_ts_stream_decode (TYPE_1__*) ;
 scalar_t__ program ;

hb_buffer_t * hb_stream_read( hb_stream_t * src_stream )
{
    if ( src_stream->hb_stream_type == ffmpeg )
    {
        return hb_ffmpeg_read( src_stream );
    }
    if ( src_stream->hb_stream_type == program )
    {
        return hb_ps_stream_decode( src_stream );
    }
    return hb_ts_stream_decode( src_stream );
}
