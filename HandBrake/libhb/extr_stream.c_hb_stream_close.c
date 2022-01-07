
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hb_stream_type; scalar_t__ frames; scalar_t__ errors; } ;
typedef TYPE_1__ hb_stream_t ;


 scalar_t__ ffmpeg ;
 int ffmpeg_close (TYPE_1__*) ;
 int hb_log (char*,scalar_t__,scalar_t__,double) ;
 int hb_stream_delete (TYPE_1__*) ;

void hb_stream_close( hb_stream_t ** _d )
{
    hb_stream_t *stream = * _d;

    if (stream == ((void*)0))
    {
        return;
    }

    if ( stream->hb_stream_type == ffmpeg )
    {
        ffmpeg_close( stream );
        hb_stream_delete( stream );
        *_d = ((void*)0);
        return;
    }

    if ( stream->frames )
    {
        hb_log( "stream: %d good frames, %d errors (%.0f%%)", stream->frames,
                stream->errors, (double)stream->errors * 100. /
                (double)stream->frames );
    }

    hb_stream_delete( stream );
    *_d = ((void*)0);
}
