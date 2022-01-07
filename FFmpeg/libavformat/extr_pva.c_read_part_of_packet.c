
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_6__ {int * streams; TYPE_1__* priv_data; int * pb; } ;
struct TYPE_5__ {int continue_pes; } ;
typedef TYPE_1__ PVAContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AVINDEX_KEYFRAME ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 scalar_t__ AV_NOPTS_VALUE ;
 int EIO ;
 int PVA_AUDIO_PAYLOAD ;
 int PVA_MAGIC ;
 int PVA_MAX_PAYLOAD_LENGTH ;
 int PVA_VIDEO_PAYLOAD ;
 int av_add_index_entry (int ,scalar_t__,scalar_t__,int ,int ,int ) ;
 scalar_t__ avio_feof (int *) ;
 int avio_r8 (int *) ;
 int avio_rb16 (int *) ;
 int avio_rb24 (int *) ;
 scalar_t__ avio_rb32 (int *) ;
 int avio_read (int *,unsigned char*,int) ;
 int avio_skip (int *,int) ;
 scalar_t__ avio_tell (int *) ;
 scalar_t__ ff_parse_pes_pts (unsigned char*) ;
 int pva_log (TYPE_2__*,int ,char*,...) ;

__attribute__((used)) static int read_part_of_packet(AVFormatContext *s, int64_t *pts,
                               int *len, int *strid, int read_packet) {
    AVIOContext *pb = s->pb;
    PVAContext *pvactx = s->priv_data;
    int syncword, streamid, reserved, flags, length, pts_flag;
    int64_t pva_pts = AV_NOPTS_VALUE, startpos;
    int ret;

recover:
    startpos = avio_tell(pb);

    syncword = avio_rb16(pb);
    streamid = avio_r8(pb);
    avio_r8(pb);
    reserved = avio_r8(pb);
    flags = avio_r8(pb);
    length = avio_rb16(pb);

    pts_flag = flags & 0x10;

    if (syncword != PVA_MAGIC) {
        pva_log(s, AV_LOG_ERROR, "invalid syncword\n");
        return AVERROR(EIO);
    }
    if (streamid != PVA_VIDEO_PAYLOAD && streamid != PVA_AUDIO_PAYLOAD) {
        pva_log(s, AV_LOG_ERROR, "invalid streamid\n");
        return AVERROR(EIO);
    }
    if (reserved != 0x55) {
        pva_log(s, AV_LOG_WARNING, "expected reserved byte to be 0x55\n");
    }
    if (length > PVA_MAX_PAYLOAD_LENGTH) {
        pva_log(s, AV_LOG_ERROR, "invalid payload length %u\n", length);
        return AVERROR(EIO);
    }

    if (streamid == PVA_VIDEO_PAYLOAD && pts_flag) {
        pva_pts = avio_rb32(pb);
        length -= 4;
    } else if (streamid == PVA_AUDIO_PAYLOAD) {




        if (!pvactx->continue_pes) {
            int pes_signal, pes_header_data_length, pes_packet_length,
                pes_flags;
            unsigned char pes_header_data[256];

            pes_signal = avio_rb24(pb);
            avio_r8(pb);
            pes_packet_length = avio_rb16(pb);
            pes_flags = avio_rb16(pb);
            pes_header_data_length = avio_r8(pb);

            if (avio_feof(pb)) {
                return AVERROR_EOF;
            }

            if (pes_signal != 1 || pes_header_data_length == 0) {
                pva_log(s, AV_LOG_WARNING, "expected non empty signaled PES packet, "
                                          "trying to recover\n");
                avio_skip(pb, length - 9);
                if (!read_packet)
                    return AVERROR(EIO);
                goto recover;
            }

            ret = avio_read(pb, pes_header_data, pes_header_data_length);
            if (ret != pes_header_data_length)
                return ret < 0 ? ret : AVERROR_INVALIDDATA;
            length -= 9 + pes_header_data_length;

            pes_packet_length -= 3 + pes_header_data_length;

            pvactx->continue_pes = pes_packet_length;

            if (pes_flags & 0x80 && (pes_header_data[0] & 0xf0) == 0x20) {
                if (pes_header_data_length < 5) {
                    pva_log(s, AV_LOG_ERROR, "header too short\n");
                    avio_skip(pb, length);
                    return AVERROR_INVALIDDATA;
                }
                pva_pts = ff_parse_pes_pts(pes_header_data);
            }
        }

        pvactx->continue_pes -= length;

        if (pvactx->continue_pes < 0) {
            pva_log(s, AV_LOG_WARNING, "audio data corruption\n");
            pvactx->continue_pes = 0;
        }
    }

    if (pva_pts != AV_NOPTS_VALUE)
        av_add_index_entry(s->streams[streamid-1], startpos, pva_pts, 0, 0, AVINDEX_KEYFRAME);

    *pts = pva_pts;
    *len = length;
    *strid = streamid;
    return 0;
}
