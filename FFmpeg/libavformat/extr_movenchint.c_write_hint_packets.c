
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;
struct TYPE_3__ {int max_packet_size; scalar_t__ prev_rtp_ts; scalar_t__ cur_rtp_ts_unwrapped; int sample_queue; } ;
typedef TYPE_1__ MOVTrack ;
typedef int AVIOContext ;


 scalar_t__ AV_NOPTS_VALUE ;
 int AV_RB16 (char const*) ;
 int AV_RB32 (char const*) ;
 scalar_t__ RTP_PT_IS_RTCP (char const) ;
 int SEEK_SET ;
 int avio_seek (int *,scalar_t__,int ) ;
 scalar_t__ avio_tell (int *) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int avio_write (int *,char const*,int) ;
 int describe_payload (char const*,int,int *,int*,int *) ;

__attribute__((used)) static int write_hint_packets(AVIOContext *out, const uint8_t *data,
                              int size, MOVTrack *trk, int64_t *dts)
{
    int64_t curpos;
    int64_t count_pos, entries_pos;
    int count = 0, entries;

    count_pos = avio_tell(out);

    avio_wb16(out, 0);
    avio_wb16(out, 0);

    while (size > 4) {
        uint32_t packet_len = AV_RB32(data);
        uint16_t seq;
        uint32_t ts;
        int32_t ts_diff;

        data += 4;
        size -= 4;
        if (packet_len > size || packet_len <= 12)
            break;
        if (RTP_PT_IS_RTCP(data[1])) {

            data += packet_len;
            size -= packet_len;
            continue;
        }

        if (packet_len > trk->max_packet_size)
            trk->max_packet_size = packet_len;

        seq = AV_RB16(&data[2]);
        ts = AV_RB32(&data[4]);

        if (trk->prev_rtp_ts == 0)
            trk->prev_rtp_ts = ts;


        ts_diff = ts - trk->prev_rtp_ts;
        if (ts_diff > 0) {
            trk->cur_rtp_ts_unwrapped += ts_diff;
            trk->prev_rtp_ts = ts;
            ts_diff = 0;
        }
        if (*dts == AV_NOPTS_VALUE)
            *dts = trk->cur_rtp_ts_unwrapped;

        count++;

        avio_wb32(out, 0);
        avio_write(out, data, 2);
        avio_wb16(out, seq);
        avio_wb16(out, ts_diff ? 4 : 0);
        entries_pos = avio_tell(out);
        avio_wb16(out, 0);
        if (ts_diff) {
            avio_wb32(out, 16);
            avio_wb32(out, 12);
            avio_write(out, "rtpo", 4);
            avio_wb32(out, ts_diff);
        }

        data += 12;
        size -= 12;
        packet_len -= 12;

        entries = 0;

        describe_payload(data, packet_len, out, &entries, &trk->sample_queue);
        data += packet_len;
        size -= packet_len;

        curpos = avio_tell(out);
        avio_seek(out, entries_pos, SEEK_SET);
        avio_wb16(out, entries);
        avio_seek(out, curpos, SEEK_SET);
    }

    curpos = avio_tell(out);
    avio_seek(out, count_pos, SEEK_SET);
    avio_wb16(out, count);
    avio_seek(out, curpos, SEEK_SET);
    return count;
}
