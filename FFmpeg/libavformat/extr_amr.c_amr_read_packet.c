
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_14__ {int cumulated_size; int block_count; } ;
struct TYPE_13__ {scalar_t__ codec_id; int bit_rate; } ;
struct TYPE_12__ {int pb; TYPE_1__** streams; TYPE_5__* priv_data; } ;
struct TYPE_11__ {int* data; int duration; int pos; scalar_t__ stream_index; } ;
struct TYPE_10__ {TYPE_4__* codecpar; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;
typedef TYPE_5__ AMRContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 scalar_t__ AV_CODEC_ID_AMR_NB ;
 scalar_t__ AV_CODEC_ID_AMR_WB ;
 int EIO ;
 int UINT64_MAX ;
 int* amrnb_packed_size ;
 int* amrwb_packed_size ;
 scalar_t__ av_new_packet (TYPE_2__*,int) ;
 int av_packet_unref (TYPE_2__*) ;
 scalar_t__ avio_feof (int ) ;
 int avio_r8 (int ) ;
 int avio_read (int ,int*,int) ;
 int avio_tell (int ) ;

__attribute__((used)) static int amr_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    AVCodecParameters *par = s->streams[0]->codecpar;
    int read, size = 0, toc, mode;
    int64_t pos = avio_tell(s->pb);
    AMRContext *amr = s->priv_data;

    if (avio_feof(s->pb)) {
        return AVERROR_EOF;
    }


    toc = avio_r8(s->pb);
    mode = (toc >> 3) & 0x0F;

    if (par->codec_id == AV_CODEC_ID_AMR_NB) {
        size = amrnb_packed_size[mode];
    } else if (par->codec_id == AV_CODEC_ID_AMR_WB) {
        size = amrwb_packed_size[mode];
    }

    if (!size || av_new_packet(pkt, size))
        return AVERROR(EIO);

    if (amr->cumulated_size < UINT64_MAX - size) {
        amr->cumulated_size += size;

        s->streams[0]->codecpar->bit_rate = amr->cumulated_size / ++amr->block_count * 8 * 50;
    }

    pkt->stream_index = 0;
    pkt->pos = pos;
    pkt->data[0] = toc;
    pkt->duration = par->codec_id == AV_CODEC_ID_AMR_NB ? 160 : 320;
    read = avio_read(s->pb, pkt->data + 1, size - 1);

    if (read != size - 1) {
        av_packet_unref(pkt);
        if (read < 0)
            return read;
        return AVERROR(EIO);
    }

    return 0;
}
