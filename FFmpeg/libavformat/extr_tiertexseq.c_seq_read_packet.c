
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_10__ {int* data; int stream_index; int pts; } ;
struct TYPE_9__ {int audio_buffer_full; int current_pal_data_size; scalar_t__ current_video_data_size; scalar_t__ current_frame_offs; scalar_t__ current_pal_data_offs; scalar_t__ current_audio_data_offs; int current_frame_pts; int audio_stream_index; int current_audio_data_size; int video_stream_index; int current_video_data_ptr; } ;
typedef TYPE_1__ SeqDemuxContext ;
typedef TYPE_2__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int EIO ;
 int ENOMEM ;
 int SEEK_SET ;
 int av_get_packet (int *,TYPE_2__*,int ) ;
 scalar_t__ av_new_packet (TYPE_2__*,scalar_t__) ;
 int avio_read (int *,int*,int) ;
 int avio_seek (int *,scalar_t__,int ) ;
 int memcpy (int*,int ,scalar_t__) ;
 int seq_parse_frame_data (TYPE_1__*,int *) ;

__attribute__((used)) static int seq_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    int rc;
    SeqDemuxContext *seq = s->priv_data;
    AVIOContext *pb = s->pb;

    if (!seq->audio_buffer_full) {
        rc = seq_parse_frame_data(seq, pb);
        if (rc)
            return rc;


        if (seq->current_pal_data_size + seq->current_video_data_size != 0) {
            if (av_new_packet(pkt, 1 + seq->current_pal_data_size + seq->current_video_data_size))
                return AVERROR(ENOMEM);

            pkt->data[0] = 0;
            if (seq->current_pal_data_size) {
                pkt->data[0] |= 1;
                avio_seek(pb, seq->current_frame_offs + seq->current_pal_data_offs, SEEK_SET);
                if (avio_read(pb, &pkt->data[1], seq->current_pal_data_size) != seq->current_pal_data_size)
                    return AVERROR(EIO);
            }
            if (seq->current_video_data_size) {
                pkt->data[0] |= 2;
                memcpy(&pkt->data[1 + seq->current_pal_data_size],
                  seq->current_video_data_ptr,
                  seq->current_video_data_size);
            }
            pkt->stream_index = seq->video_stream_index;
            pkt->pts = seq->current_frame_pts;


            seq->audio_buffer_full = 1;
            return 0;
       }
    }


    if (seq->current_audio_data_offs == 0)
        return AVERROR(EIO);

    avio_seek(pb, seq->current_frame_offs + seq->current_audio_data_offs, SEEK_SET);
    rc = av_get_packet(pb, pkt, seq->current_audio_data_size);
    if (rc < 0)
        return rc;

    pkt->stream_index = seq->audio_stream_index;
    seq->current_frame_pts++;

    seq->audio_buffer_full = 0;
    return 0;
}
