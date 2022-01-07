
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ stream; int sample_size; scalar_t__ pts; scalar_t__ keyframe; int sample_offset; } ;
typedef TYPE_1__ film_sample ;
struct TYPE_11__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_10__ {scalar_t__ stream_index; scalar_t__ duration; int flags; scalar_t__ pts; scalar_t__ dts; } ;
struct TYPE_9__ {size_t current_sample; size_t sample_count; TYPE_1__* sample_table; } ;
typedef TYPE_2__ FilmDemuxContext ;
typedef TYPE_3__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_PKT_FLAG_KEY ;
 int EIO ;
 int SEEK_SET ;
 int av_get_packet (int *,TYPE_3__*,int) ;
 int avio_seek (int *,int ,int ) ;

__attribute__((used)) static int film_read_packet(AVFormatContext *s,
                            AVPacket *pkt)
{
    FilmDemuxContext *film = s->priv_data;
    AVIOContext *pb = s->pb;
    film_sample *sample;
    film_sample *next_sample = ((void*)0);
    int next_sample_id;
    int ret = 0;

    if (film->current_sample >= film->sample_count)
        return AVERROR_EOF;

    sample = &film->sample_table[film->current_sample];



    next_sample_id = film->current_sample + 1;
    while (next_sample == ((void*)0)) {
        if (next_sample_id >= film->sample_count)
            break;

        next_sample = &film->sample_table[next_sample_id];
        if (next_sample->stream != sample->stream) {
            next_sample = ((void*)0);
            next_sample_id++;
        }
    }


    avio_seek(pb, sample->sample_offset, SEEK_SET);

    ret = av_get_packet(pb, pkt, sample->sample_size);
    if (ret != sample->sample_size)
        ret = AVERROR(EIO);

    pkt->stream_index = sample->stream;
    pkt->dts = sample->pts;
    pkt->pts = sample->pts;
    pkt->flags |= sample->keyframe ? AV_PKT_FLAG_KEY : 0;
    if (next_sample != ((void*)0))
        pkt->duration = next_sample->pts - sample->pts;

    film->current_sample++;

    return ret;
}
