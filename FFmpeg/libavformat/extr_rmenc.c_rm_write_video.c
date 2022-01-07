
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_9__ {TYPE_1__* video_stream; } ;
struct TYPE_8__ {int nb_frames; } ;
typedef TYPE_1__ StreamInfo ;
typedef TYPE_2__ RMMuxContext ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int AV_PKT_FLAG_KEY ;
 int MAX_PACKET_SIZE ;
 int av_log (TYPE_3__*,int ,char*,int) ;
 int avio_w8 (int *,int) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int avio_write (int *,int const*,int) ;
 int write_packet_header (TYPE_3__*,TYPE_1__*,int,int) ;

__attribute__((used)) static int rm_write_video(AVFormatContext *s, const uint8_t *buf, int size, int flags)
{
    RMMuxContext *rm = s->priv_data;
    AVIOContext *pb = s->pb;
    StreamInfo *stream = rm->video_stream;
    int key_frame = !!(flags & AV_PKT_FLAG_KEY);





    if (size > MAX_PACKET_SIZE) {
        av_log(s, AV_LOG_ERROR, "Muxing packets larger than 64 kB (%d) is not supported\n", size);
        return AVERROR_PATCHWELCOME;
    }
    write_packet_header(s, stream, size + 7 + (size >= 0x4000)*4, key_frame);

    avio_w8(pb, 0x81);


    if (key_frame) {
        avio_w8(pb, 0x81);
    } else {
        avio_w8(pb, 0x01);
    }
    if(size >= 0x4000){
        avio_wb32(pb, size);
        avio_wb32(pb, size);
    }else{
        avio_wb16(pb, 0x4000 | size);
        avio_wb16(pb, 0x4000 | size);
    }
    avio_w8(pb, stream->nb_frames & 0xff);

    avio_write(pb, buf, size);

    stream->nb_frames++;
    return 0;
}
