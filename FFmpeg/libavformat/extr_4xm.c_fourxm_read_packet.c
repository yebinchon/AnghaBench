
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_13__ {int pts; unsigned char* data; int stream_index; int pos; } ;
struct TYPE_12__ {int video_pts; unsigned int track_count; TYPE_1__* tracks; int video_stream_index; } ;
struct TYPE_11__ {int channels; int audio_pts; int bits; int adpcm; int stream_index; } ;
typedef TYPE_2__ FourxmDemuxContext ;
typedef TYPE_3__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 unsigned int AV_RL32 (unsigned char*) ;
 int EIO ;

 int av_get_packet (int *,TYPE_3__*,unsigned int) ;
 int av_new_packet (TYPE_3__*,unsigned int) ;
 int av_packet_unref (TYPE_3__*) ;
 int av_shrink_packet (TYPE_3__*,int) ;
 scalar_t__ avio_feof (int *) ;
 int avio_read (int *,unsigned char*,unsigned int) ;
 unsigned int avio_rl32 (int *) ;
 int avio_skip (int *,unsigned int) ;
 int avio_tell (int *) ;




 int memcpy (unsigned char*,unsigned char*,int) ;




__attribute__((used)) static int fourxm_read_packet(AVFormatContext *s,
                              AVPacket *pkt)
{
    FourxmDemuxContext *fourxm = s->priv_data;
    AVIOContext *pb = s->pb;
    unsigned int fourcc_tag;
    unsigned int size;
    int ret = 0;
    unsigned int track_number;
    int packet_read = 0;
    unsigned char header[8];
    int audio_frame_count;

    while (!packet_read) {
        if ((ret = avio_read(s->pb, header, 8)) < 0)
            return ret;
        fourcc_tag = AV_RL32(&header[0]);
        size = AV_RL32(&header[4]);
        if (avio_feof(pb))
            return AVERROR(EIO);
        switch (fourcc_tag) {
        case 135:

            fourxm->video_pts++;


            avio_rl32(pb);
            break;

        case 131:
        case 129:
        case 133:
        case 132:
        case 130:
        case 134:


            if (size + 8 < size || av_new_packet(pkt, size + 8))
                return AVERROR(EIO);
            pkt->stream_index = fourxm->video_stream_index;
            pkt->pts = fourxm->video_pts;
            pkt->pos = avio_tell(s->pb);
            memcpy(pkt->data, header, 8);
            ret = avio_read(s->pb, &pkt->data[8], size);

            if (ret < 0) {
                av_packet_unref(pkt);
            } else {
                packet_read = 1;
                av_shrink_packet(pkt, ret + 8);
            }
            break;

        case 128:
            track_number = avio_rl32(pb);
            avio_skip(pb, 4);
            size -= 8;

            if (track_number < fourxm->track_count &&
                fourxm->tracks[track_number].channels > 0) {
                ret = av_get_packet(s->pb, pkt, size);
                if (ret < 0)
                    return AVERROR(EIO);
                pkt->stream_index =
                    fourxm->tracks[track_number].stream_index;
                pkt->pts = fourxm->tracks[track_number].audio_pts;
                packet_read = 1;


                audio_frame_count = size;
                if (fourxm->tracks[track_number].adpcm)
                    audio_frame_count -= 2 * (fourxm->tracks[track_number].channels);
                audio_frame_count /= fourxm->tracks[track_number].channels;
                if (fourxm->tracks[track_number].adpcm) {
                    audio_frame_count *= 2;
                } else
                    audio_frame_count /=
                        (fourxm->tracks[track_number].bits / 8);
                fourxm->tracks[track_number].audio_pts += audio_frame_count;
            } else {
                avio_skip(pb, size);
            }
            break;

        default:
            avio_skip(pb, size);
            break;
        }
    }
    return ret;
}
