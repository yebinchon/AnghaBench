
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_13__ {TYPE_2__** streams; int * pb; TYPE_3__* priv_data; } ;
struct TYPE_12__ {int duration; scalar_t__ pos; int stream_index; int flags; } ;
struct TYPE_11__ {scalar_t__ body_end; scalar_t__ body_pos; scalar_t__ body_size; scalar_t__ is_64bit; } ;
struct TYPE_10__ {long long duration; TYPE_1__* codecpar; } ;
struct TYPE_9__ {int sample_rate; } ;
typedef TYPE_3__ IffDemuxContext ;
typedef TYPE_4__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AV_PKT_FLAG_KEY ;


 int SEEK_SET ;
 int av_get_packet (int *,TYPE_4__*,scalar_t__) ;
 int avio_feof (int *) ;
 long long avio_rb32 (int *) ;
 long long avio_rb64 (int *) ;
 int avio_rl32 (int *) ;
 int avio_seek (int *,scalar_t__,int ) ;
 int avio_skip (int *,scalar_t__) ;
 scalar_t__ avio_tell (int *) ;

__attribute__((used)) static int read_dst_frame(AVFormatContext *s, AVPacket *pkt)
{
    IffDemuxContext *iff = s->priv_data;
    AVIOContext *pb = s->pb;
    uint32_t chunk_id;
    uint64_t chunk_pos, data_pos, data_size;
    int ret = AVERROR_EOF;

    while (!avio_feof(pb)) {
        chunk_pos = avio_tell(pb);
        if (chunk_pos >= iff->body_end)
            return AVERROR_EOF;

        chunk_id = avio_rl32(pb);
        data_size = iff->is_64bit ? avio_rb64(pb) : avio_rb32(pb);
        data_pos = avio_tell(pb);

        if (data_size < 1)
            return AVERROR_INVALIDDATA;

        switch (chunk_id) {
        case 129:
            if (!pkt) {
                iff->body_pos = avio_tell(pb) - (iff->is_64bit ? 12 : 8);
                iff->body_size = iff->body_end - iff->body_pos;
                return 0;
            }
            ret = av_get_packet(pb, pkt, data_size);
            if (ret < 0)
                return ret;
            if (data_size & 1)
                avio_skip(pb, 1);
            pkt->flags |= AV_PKT_FLAG_KEY;
            pkt->stream_index = 0;
            pkt->duration = 588 * s->streams[0]->codecpar->sample_rate / 44100;
            pkt->pos = chunk_pos;

            chunk_pos = avio_tell(pb);
            if (chunk_pos >= iff->body_end)
                return 0;

            avio_seek(pb, chunk_pos, SEEK_SET);
            return 0;

        case 128:
            if (data_size < 4)
                return AVERROR_INVALIDDATA;
            s->streams[0]->duration = avio_rb32(pb) * 588LL * s->streams[0]->codecpar->sample_rate / 44100;
            break;
        }

        avio_skip(pb, data_size - (avio_tell(pb) - data_pos) + (data_size & 1));
    }

    return ret;
}
