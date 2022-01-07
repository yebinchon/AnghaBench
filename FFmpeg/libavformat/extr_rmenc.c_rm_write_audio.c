
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int * pb; TYPE_3__* priv_data; } ;
struct TYPE_10__ {TYPE_2__* audio_stream; } ;
struct TYPE_9__ {int nb_frames; TYPE_1__* par; } ;
struct TYPE_8__ {scalar_t__ codec_id; } ;
typedef TYPE_2__ StreamInfo ;
typedef TYPE_3__ RMMuxContext ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 scalar_t__ AV_CODEC_ID_AC3 ;
 int AV_PKT_FLAG_KEY ;
 int avio_w8 (int *,int const) ;
 int avio_write (int *,int const*,int) ;
 int write_packet_header (TYPE_4__*,TYPE_2__*,int,int) ;

__attribute__((used)) static int rm_write_audio(AVFormatContext *s, const uint8_t *buf, int size, int flags)
{
    RMMuxContext *rm = s->priv_data;
    AVIOContext *pb = s->pb;
    StreamInfo *stream = rm->audio_stream;
    int i;

    write_packet_header(s, stream, size, !!(flags & AV_PKT_FLAG_KEY));

    if (stream->par->codec_id == AV_CODEC_ID_AC3) {

        for (i = 0; i < size; i += 2) {
            avio_w8(pb, buf[i + 1]);
            avio_w8(pb, buf[i]);
        }
    } else {
        avio_write(pb, buf, size);
    }
    stream->nb_frames++;
    return 0;
}
