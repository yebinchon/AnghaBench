
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int8_t ;
typedef int int64_t ;
struct TYPE_16__ {TYPE_4__** streams; TYPE_3__* priv_data; int * pb; } ;
struct TYPE_15__ {int time_base; TYPE_1__* codecpar; } ;
struct TYPE_14__ {int packet_count; int audio_index; int video_index; TYPE_2__* start; } ;
struct TYPE_13__ {struct TYPE_13__* next; } ;
struct TYPE_12__ {int codec_id; scalar_t__ format; int height; int width; int channels; int bits_per_coded_sample; int sample_rate; } ;
typedef TYPE_2__ FILMPacket ;
typedef TYPE_3__ FILMOutputContext ;
typedef TYPE_4__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;


 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_RGB24 ;
 int EINVAL ;
 int SEEK_SET ;
 int av_freep (TYPE_2__**) ;
 int av_inv_q (int ) ;
 int av_log (TYPE_5__*,int ,char*) ;
 int av_q2d (int ) ;
 int avio_flush (int *) ;
 int avio_seek (int *,int ,int ) ;
 int avio_w8 (int *,int) ;
 int avio_wb16 (int *,int ) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 int film_write_packet_to_header (TYPE_5__*,TYPE_2__*) ;
 int get_audio_codec_id (int) ;
 int shift_data (TYPE_5__*,int) ;

__attribute__((used)) static int film_write_header(AVFormatContext *format_context)
{
    int ret = 0;
    int64_t sample_table_size, stabsize, headersize;
    int8_t audio_codec;
    AVIOContext *pb = format_context->pb;
    FILMOutputContext *film = format_context->priv_data;
    FILMPacket *prev, *packet;
    AVStream *audio = ((void*)0);
    AVStream *video = ((void*)0);



    sample_table_size = film->packet_count * 16;
    stabsize = 16 + sample_table_size;
    headersize = 16 +
                 32 +
                 stabsize;

    ret = shift_data(format_context, headersize);
    if (ret < 0)
        return ret;

    avio_seek(pb, 0, SEEK_SET);

    if (film->audio_index > -1)
        audio = format_context->streams[film->audio_index];
    if (film->video_index > -1)
        video = format_context->streams[film->video_index];

    if (audio != ((void*)0)) {
        audio_codec = get_audio_codec_id(audio->codecpar->codec_id);
        if (audio_codec < 0) {
            av_log(format_context, AV_LOG_ERROR, "Incompatible audio stream format.\n");
            return AVERROR(EINVAL);
        }
    }

    if (video->codecpar->format != AV_PIX_FMT_RGB24) {
        av_log(format_context, AV_LOG_ERROR, "Pixel format must be rgb24.\n");
        return AVERROR(EINVAL);
    }



    ffio_wfourcc(pb, "FILM");
    avio_wb32(pb, 48 + stabsize);


    ffio_wfourcc(pb, "1.09");

    avio_wb32(pb, 0);


    ffio_wfourcc(pb, "FDSC");
    avio_wb32(pb, 0x20);


    switch (video->codecpar->codec_id) {
    case 129:
        ffio_wfourcc(pb, "cvid");
        break;
    case 128:
        ffio_wfourcc(pb, "raw ");
        break;
    default:
        av_log(format_context, AV_LOG_ERROR, "Incompatible video stream format.\n");
        return AVERROR(EINVAL);
    }

    avio_wb32(pb, video->codecpar->height);
    avio_wb32(pb, video->codecpar->width);
    avio_w8(pb, 24);

    if (audio != ((void*)0)) {
        avio_w8(pb, audio->codecpar->channels);
        avio_w8(pb, audio->codecpar->bits_per_coded_sample);
        avio_w8(pb, audio_codec);
        avio_wb16(pb, audio->codecpar->sample_rate);
    } else {

        avio_w8(pb, 0);
        avio_w8(pb, 0);
        avio_w8(pb, 0);
        avio_wb16(pb, 0);
    }


    avio_wb32(pb, 0);
    avio_wb16(pb, 0);


    ffio_wfourcc(pb, "STAB");
    avio_wb32(pb, 16 + (film->packet_count * 16));
    avio_wb32(pb, av_q2d(av_inv_q(video->time_base)));

    avio_wb32(pb, film->packet_count);

    avio_flush(pb);


    packet = film->start;
    while (packet != ((void*)0)) {
        film_write_packet_to_header(format_context, packet);
        prev = packet;
        packet = packet->next;
        av_freep(&prev);
    }

    return 0;
}
