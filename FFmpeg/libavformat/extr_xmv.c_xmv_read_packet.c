
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ current_frame; scalar_t__ frame_count; } ;
struct TYPE_9__ {scalar_t__ current_stream; scalar_t__ stream_count; TYPE_1__ video; } ;
typedef TYPE_2__ XMVDemuxContext ;
struct TYPE_10__ {TYPE_2__* priv_data; } ;
typedef int AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int xmv_fetch_audio_packet (TYPE_3__*,int *,scalar_t__) ;
 int xmv_fetch_new_packet (TYPE_3__*) ;
 int xmv_fetch_video_packet (TYPE_3__*,int *) ;

__attribute__((used)) static int xmv_read_packet(AVFormatContext *s,
                           AVPacket *pkt)
{
    XMVDemuxContext *xmv = s->priv_data;
    int result;

    if (xmv->video.current_frame == xmv->video.frame_count) {


        result = xmv_fetch_new_packet(s);
        if (result)
            return result;
    }

    if (xmv->current_stream == 0) {


        result = xmv_fetch_video_packet(s, pkt);
    } else {


        result = xmv_fetch_audio_packet(s, pkt, xmv->current_stream - 1);
    }
    if (result) {
        xmv->current_stream = 0;
        xmv->video.current_frame = xmv->video.frame_count;
        return result;
    }



    if (++xmv->current_stream >= xmv->stream_count) {
        xmv->current_stream = 0;
        xmv->video.current_frame += 1;
    }

    return 0;
}
