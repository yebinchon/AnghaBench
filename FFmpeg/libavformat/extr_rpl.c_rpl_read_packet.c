
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_16__ {size_t nb_streams; TYPE_3__** streams; int * pb; TYPE_2__* priv_data; } ;
struct TYPE_15__ {int pos; scalar_t__ timestamp; int size; } ;
struct TYPE_14__ {int duration; scalar_t__ pts; size_t stream_index; int flags; } ;
struct TYPE_13__ {size_t nb_index_entries; TYPE_1__* codecpar; TYPE_5__* index_entries; } ;
struct TYPE_12__ {size_t chunk_part; size_t chunk_number; scalar_t__ frame_in_part; scalar_t__ frames_per_chunk; } ;
struct TYPE_11__ {scalar_t__ codec_type; int codec_tag; } ;
typedef TYPE_2__ RPLContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVIndexEntry ;
typedef int AVIOContext ;
typedef TYPE_6__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_PKT_FLAG_KEY ;
 int EIO ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int av_get_packet (int *,TYPE_4__*,int) ;
 int av_packet_unref (TYPE_4__*) ;
 int avio_rl32 (int *) ;
 scalar_t__ avio_seek (int *,int,int ) ;
 int avio_skip (int *,int) ;

__attribute__((used)) static int rpl_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    RPLContext *rpl = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream* stream;
    AVIndexEntry* index_entry;
    int ret;

    if (rpl->chunk_part == s->nb_streams) {
        rpl->chunk_number++;
        rpl->chunk_part = 0;
    }

    stream = s->streams[rpl->chunk_part];

    if (rpl->chunk_number >= stream->nb_index_entries)
        return AVERROR_EOF;

    index_entry = &stream->index_entries[rpl->chunk_number];

    if (rpl->frame_in_part == 0)
        if (avio_seek(pb, index_entry->pos, SEEK_SET) < 0)
            return AVERROR(EIO);

    if (stream->codecpar->codec_type == AVMEDIA_TYPE_VIDEO &&
        stream->codecpar->codec_tag == 124) {


        uint32_t frame_size;

        avio_skip(pb, 4);
        frame_size = avio_rl32(pb);
        if (avio_seek(pb, -8, SEEK_CUR) < 0)
            return AVERROR(EIO);

        ret = av_get_packet(pb, pkt, frame_size);
        if (ret < 0)
            return ret;
        if (ret != frame_size) {
            av_packet_unref(pkt);
            return AVERROR(EIO);
        }
        pkt->duration = 1;
        pkt->pts = index_entry->timestamp + rpl->frame_in_part;
        pkt->stream_index = rpl->chunk_part;

        rpl->frame_in_part++;
        if (rpl->frame_in_part == rpl->frames_per_chunk) {
            rpl->frame_in_part = 0;
            rpl->chunk_part++;
        }
    } else {
        ret = av_get_packet(pb, pkt, index_entry->size);
        if (ret < 0)
            return ret;
        if (ret != index_entry->size) {
            av_packet_unref(pkt);
            return AVERROR(EIO);
        }

        if (stream->codecpar->codec_type == AVMEDIA_TYPE_VIDEO) {


            pkt->duration = rpl->frames_per_chunk;
        } else {


            pkt->duration = ret * 8;
        }
        pkt->pts = index_entry->timestamp;
        pkt->stream_index = rpl->chunk_part;
        rpl->chunk_part++;
    }



    if (rpl->chunk_number == 0 && rpl->frame_in_part == 0)
        pkt->flags |= AV_PKT_FLAG_KEY;

    return ret;
}
