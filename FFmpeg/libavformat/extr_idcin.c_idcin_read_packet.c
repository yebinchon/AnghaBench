
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_19__ {TYPE_3__* pb; TYPE_1__* priv_data; } ;
struct TYPE_18__ {int error; scalar_t__ eof_reached; } ;
struct TYPE_17__ {int duration; int stream_index; int flags; } ;
struct TYPE_16__ {int next_chunk_is_video; int current_audio_chunk; unsigned int audio_chunk_size2; unsigned int audio_chunk_size1; unsigned int block_align; scalar_t__ audio_present; int audio_stream_index; int video_stream_index; } ;
typedef TYPE_1__ IdcinDemuxContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AVPALETTE_SIZE ;
 int AV_LOG_ERROR ;
 int AV_PKT_DATA_PALETTE ;
 int AV_PKT_FLAG_KEY ;
 int EIO ;
 int ENOMEM ;
 int INT_MAX ;
 int av_get_packet (TYPE_3__*,TYPE_2__*,unsigned int) ;
 int av_log (TYPE_4__*,int ,char*,...) ;
 int * av_packet_new_side_data (TYPE_2__*,int ,int ) ;
 int av_packet_unref (TYPE_2__*) ;
 scalar_t__ avio_feof (TYPE_3__*) ;
 int avio_read (TYPE_3__*,unsigned char*,int) ;
 unsigned int avio_rl32 (TYPE_3__*) ;
 int avio_skip (TYPE_3__*,int) ;
 int memcpy (int *,int*,int ) ;

__attribute__((used)) static int idcin_read_packet(AVFormatContext *s,
                             AVPacket *pkt)
{
    int ret;
    unsigned int command;
    unsigned int chunk_size;
    IdcinDemuxContext *idcin = s->priv_data;
    AVIOContext *pb = s->pb;
    int i;
    int palette_scale;
    unsigned char r, g, b;
    unsigned char palette_buffer[768];
    uint32_t palette[256];

    if (avio_feof(s->pb))
        return s->pb->error ? s->pb->error : AVERROR_EOF;

    if (idcin->next_chunk_is_video) {
        command = avio_rl32(pb);
        if (command == 2) {
            return AVERROR(EIO);
        } else if (command == 1) {

            ret = avio_read(pb, palette_buffer, 768);
            if (ret < 0) {
                return ret;
            } else if (ret != 768) {
                av_log(s, AV_LOG_ERROR, "incomplete packet\n");
                return AVERROR(EIO);
            }

            palette_scale = 2;
            for (i = 0; i < 768; i++)
                if (palette_buffer[i] > 63) {
                    palette_scale = 0;
                    break;
                }

            for (i = 0; i < 256; i++) {
                r = palette_buffer[i * 3 ] << palette_scale;
                g = palette_buffer[i * 3 + 1] << palette_scale;
                b = palette_buffer[i * 3 + 2] << palette_scale;
                palette[i] = (0xFFU << 24) | (r << 16) | (g << 8) | (b);
                if (palette_scale == 2)
                    palette[i] |= palette[i] >> 6 & 0x30303;
            }
        }

        if (s->pb->eof_reached) {
            av_log(s, AV_LOG_ERROR, "incomplete packet\n");
            return s->pb->error ? s->pb->error : AVERROR_EOF;
        }
        chunk_size = avio_rl32(pb);
        if (chunk_size < 4 || chunk_size > INT_MAX - 4) {
            av_log(s, AV_LOG_ERROR, "invalid chunk size: %u\n", chunk_size);
            return AVERROR_INVALIDDATA;
        }

        avio_skip(pb, 4);
        chunk_size -= 4;
        ret= av_get_packet(pb, pkt, chunk_size);
        if (ret < 0)
            return ret;
        else if (ret != chunk_size) {
            av_log(s, AV_LOG_ERROR, "incomplete packet\n");
            av_packet_unref(pkt);
            return AVERROR(EIO);
        }
        if (command == 1) {
            uint8_t *pal;

            pal = av_packet_new_side_data(pkt, AV_PKT_DATA_PALETTE,
                                          AVPALETTE_SIZE);
            if (!pal) {
                av_packet_unref(pkt);
                return AVERROR(ENOMEM);
            }
            memcpy(pal, palette, AVPALETTE_SIZE);
            pkt->flags |= AV_PKT_FLAG_KEY;
        }
        pkt->stream_index = idcin->video_stream_index;
        pkt->duration = 1;
    } else {

        if (idcin->current_audio_chunk)
            chunk_size = idcin->audio_chunk_size2;
        else
            chunk_size = idcin->audio_chunk_size1;
        ret= av_get_packet(pb, pkt, chunk_size);
        if (ret < 0)
            return ret;
        pkt->stream_index = idcin->audio_stream_index;
        pkt->duration = chunk_size / idcin->block_align;

        idcin->current_audio_chunk ^= 1;
    }

    if (idcin->audio_present)
        idcin->next_chunk_is_video ^= 1;

    return 0;
}
