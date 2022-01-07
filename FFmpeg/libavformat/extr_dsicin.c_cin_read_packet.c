
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ int16_t ;
struct TYPE_15__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_14__ {scalar_t__ pts; int* data; scalar_t__ duration; int stream_index; } ;
struct TYPE_12__ {int pal_colors_count; int video_frame_size; int video_frame_type; scalar_t__ audio_frame_size; } ;
struct TYPE_13__ {scalar_t__ audio_buffer_size; scalar_t__ audio_stream_pts; int audio_stream_index; int video_stream_pts; int video_stream_index; TYPE_1__ frame_header; } ;
typedef TYPE_1__ CinFrameHeader ;
typedef TYPE_2__ CinDemuxContext ;
typedef TYPE_3__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int av_get_packet (int *,TYPE_3__*,scalar_t__) ;
 int av_new_packet (TYPE_3__*,int) ;
 int av_packet_unref (TYPE_3__*) ;
 int av_shrink_packet (TYPE_3__*,int) ;
 int avio_read (int *,int*,int) ;
 int cin_read_frame_header (TYPE_2__*,int *) ;
 int ffio_limit (int *,int) ;

__attribute__((used)) static int cin_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    CinDemuxContext *cin = s->priv_data;
    AVIOContext *pb = s->pb;
    CinFrameHeader *hdr = &cin->frame_header;
    int rc, palette_type, pkt_size;
    int ret;

    if (cin->audio_buffer_size == 0) {
        rc = cin_read_frame_header(cin, pb);
        if (rc)
            return rc;

        if ((int16_t)hdr->pal_colors_count < 0) {
            hdr->pal_colors_count = -(int16_t)hdr->pal_colors_count;
            palette_type = 1;
        } else {
            palette_type = 0;
        }


        pkt_size = (palette_type + 3) * hdr->pal_colors_count + hdr->video_frame_size;

        pkt_size = ffio_limit(pb, pkt_size);

        ret = av_new_packet(pkt, 4 + pkt_size);
        if (ret < 0)
            return ret;

        pkt->stream_index = cin->video_stream_index;
        pkt->pts = cin->video_stream_pts++;

        pkt->data[0] = palette_type;
        pkt->data[1] = hdr->pal_colors_count & 0xFF;
        pkt->data[2] = hdr->pal_colors_count >> 8;
        pkt->data[3] = hdr->video_frame_type;

        ret = avio_read(pb, &pkt->data[4], pkt_size);
        if (ret < 0) {
            av_packet_unref(pkt);
            return ret;
        }
        if (ret < pkt_size)
            av_shrink_packet(pkt, 4 + ret);


        cin->audio_buffer_size = hdr->audio_frame_size;
        return 0;
    }


    ret = av_get_packet(pb, pkt, cin->audio_buffer_size);
    if (ret < 0)
        return ret;

    pkt->stream_index = cin->audio_stream_index;
    pkt->pts = cin->audio_stream_pts;
    pkt->duration = cin->audio_buffer_size - (pkt->pts == 0);
    cin->audio_stream_pts += pkt->duration;
    cin->audio_buffer_size = 0;
    return 0;
}
