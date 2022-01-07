
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int int64_t ;
struct TYPE_12__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_11__ {int pts; int duration; scalar_t__ stream_index; int const* data; void* pos; } ;
struct TYPE_10__ {int raw_packet_size; int pcr_incr; int cur_pcr; scalar_t__ mpeg2ts_compute_pcr; } ;
typedef TYPE_1__ MpegTSContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int MAX_PACKET_READAHEAD ;
 int SEEK_SET ;
 int TS_PACKET_SIZE ;
 scalar_t__ av_new_packet (TYPE_2__*,int ) ;
 int av_packet_unref (TYPE_2__*) ;
 int avio_read (int ,int const*,int) ;
 int avio_seek (int ,int,int ) ;
 void* avio_tell (int ) ;
 int finished_reading_packet (TYPE_3__*,int) ;
 int memcpy (int const*,int const*,int) ;
 scalar_t__ parse_pcr (int*,int*,int const*) ;
 int read_packet (TYPE_3__*,int const*,int,int const**) ;

__attribute__((used)) static int mpegts_raw_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    MpegTSContext *ts = s->priv_data;
    int ret, i;
    int64_t pcr_h, next_pcr_h, pos;
    int pcr_l, next_pcr_l;
    uint8_t pcr_buf[12];
    const uint8_t *data;

    if (av_new_packet(pkt, TS_PACKET_SIZE) < 0)
        return AVERROR(ENOMEM);
    ret = read_packet(s, pkt->data, ts->raw_packet_size, &data);
    pkt->pos = avio_tell(s->pb);
    if (ret < 0) {
        av_packet_unref(pkt);
        return ret;
    }
    if (data != pkt->data)
        memcpy(pkt->data, data, ts->raw_packet_size);
    finished_reading_packet(s, ts->raw_packet_size);
    if (ts->mpeg2ts_compute_pcr) {

        if (parse_pcr(&pcr_h, &pcr_l, pkt->data) == 0) {

            pos = avio_tell(s->pb);
            for (i = 0; i < MAX_PACKET_READAHEAD; i++) {
                avio_seek(s->pb, pos + i * ts->raw_packet_size, SEEK_SET);
                avio_read(s->pb, pcr_buf, 12);
                if (parse_pcr(&next_pcr_h, &next_pcr_l, pcr_buf) == 0) {

                    ts->pcr_incr =
                        ((next_pcr_h - pcr_h) * 300 + (next_pcr_l - pcr_l)) /
                        (i + 1);
                    break;
                }
            }
            avio_seek(s->pb, pos, SEEK_SET);

            ts->cur_pcr = pcr_h * 300 + pcr_l;
        }
        pkt->pts = ts->cur_pcr;
        pkt->duration = ts->pcr_incr;
        ts->cur_pcr += ts->pcr_incr;
    }
    pkt->stream_index = 0;
    return 0;
}
