
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ this_packet_offset; scalar_t__ next_packet_offset; int this_packet_size; int next_packet_size; int audio_track_count; } ;
typedef TYPE_1__ XMVDemuxContext ;
struct TYPE_6__ {int * pb; TYPE_1__* priv_data; } ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EIO ;
 int SEEK_SET ;
 scalar_t__ avio_seek (int *,scalar_t__,int ) ;
 int xmv_process_packet_header (TYPE_2__*) ;

__attribute__((used)) static int xmv_fetch_new_packet(AVFormatContext *s)
{
    XMVDemuxContext *xmv = s->priv_data;
    AVIOContext *pb = s->pb;
    int result;

    if (xmv->this_packet_offset == xmv->next_packet_offset)
        return AVERROR_EOF;


    xmv->this_packet_offset = xmv->next_packet_offset;
    if (avio_seek(pb, xmv->this_packet_offset, SEEK_SET) != xmv->this_packet_offset)
        return AVERROR(EIO);


    xmv->this_packet_size = xmv->next_packet_size;
    if (xmv->this_packet_size < (12 + xmv->audio_track_count * 4))
        return AVERROR(EIO);


    result = xmv_process_packet_header(s);
    if (result)
        return result;


    xmv->next_packet_offset = xmv->this_packet_offset + xmv->this_packet_size;

    return 0;
}
