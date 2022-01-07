
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_15__ {TYPE_2__** streams; TYPE_4__* priv_data; int * pb; } ;
struct TYPE_14__ {scalar_t__ stream_index; int flags; int size; int * data; int duration; int pts; } ;
struct TYPE_13__ {scalar_t__ audio_index; TYPE_3__* last; int packet_count; TYPE_3__* start; } ;
struct TYPE_12__ {int audio; int keyframe; int size; int index; struct TYPE_12__* next; int duration; int pts; } ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
struct TYPE_10__ {int codec_id; } ;
typedef TYPE_3__ FILMPacket ;
typedef TYPE_4__ FILMOutputContext ;
typedef TYPE_5__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_6__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_CODEC_ID_CINEPAK ;
 int AV_PKT_FLAG_KEY ;
 int AV_RB24 (int *) ;
 int AV_WB24 (int *,int) ;
 int ENOMEM ;
 TYPE_3__* av_mallocz (int) ;
 int avio_write (int *,int *,int) ;

__attribute__((used)) static int film_write_packet(AVFormatContext *format_context, AVPacket *pkt)
{
    FILMPacket *metadata;
    AVIOContext *pb = format_context->pb;
    FILMOutputContext *film = format_context->priv_data;
    int encoded_buf_size = 0;
    enum AVCodecID codec_id;


    metadata = av_mallocz(sizeof(FILMPacket));
    if (!metadata)
        return AVERROR(ENOMEM);
    metadata->audio = pkt->stream_index == film->audio_index;
    metadata->keyframe = pkt->flags & AV_PKT_FLAG_KEY;
    metadata->pts = pkt->pts;
    metadata->duration = pkt->duration;
    metadata->size = pkt->size;
    if (film->last == ((void*)0)) {
        metadata->index = 0;
    } else {
        metadata->index = film->last->index + film->last->size;
        film->last->next = metadata;
    }
    metadata->next = ((void*)0);
    if (film->start == ((void*)0))
        film->start = metadata;
    film->packet_count++;
    film->last = metadata;

    codec_id = format_context->streams[pkt->stream_index]->codecpar->codec_id;



    if (codec_id == AV_CODEC_ID_CINEPAK) {
        encoded_buf_size = AV_RB24(&pkt->data[1]);

        if (encoded_buf_size != pkt->size && (pkt->size % encoded_buf_size) != 0) {
            avio_write(pb, pkt->data, pkt->size);
        } else {
            uint8_t padding[2] = {0, 0};



            AV_WB24(&pkt->data[1], pkt->size - 8 + 2);
            metadata->size += 2;

            avio_write(pb, pkt->data, 10);
            avio_write(pb, padding, 2);
            avio_write(pb, &pkt->data[10], pkt->size - 10);
        }
    } else {

        avio_write(pb, pkt->data, pkt->size);
    }

    return 0;
}
