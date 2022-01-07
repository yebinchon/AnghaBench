
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ffmpeg_pkt; int ffmpeg_ic; } ;
typedef TYPE_1__ hb_stream_t ;


 int av_packet_unref (int *) ;
 int avformat_close_input (int *) ;

__attribute__((used)) static void ffmpeg_close( hb_stream_t *d )
{
    avformat_close_input( &d->ffmpeg_ic );
    av_packet_unref(&d->ffmpeg_pkt);
}
