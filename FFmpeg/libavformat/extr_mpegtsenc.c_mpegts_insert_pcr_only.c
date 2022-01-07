
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int pb; int * priv_data; } ;
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {int pid; int cc; scalar_t__ discontinuity; } ;
typedef TYPE_1__ MpegTSWriteStream ;
typedef int MpegTSWrite ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int TS_PACKET_SIZE ;
 int avio_write (int ,int*,int) ;
 int get_pcr (int *,int ) ;
 int memset (int*,int,int) ;
 int mpegts_prefix_m2ts_header (TYPE_3__*) ;
 int write_pcr_bits (int*,int ) ;

__attribute__((used)) static void mpegts_insert_pcr_only(AVFormatContext *s, AVStream *st)
{
    MpegTSWrite *ts = s->priv_data;
    MpegTSWriteStream *ts_st = st->priv_data;
    uint8_t *q;
    uint8_t buf[TS_PACKET_SIZE];

    q = buf;
    *q++ = 0x47;
    *q++ = ts_st->pid >> 8;
    *q++ = ts_st->pid;
    *q++ = 0x20 | ts_st->cc;

    *q++ = TS_PACKET_SIZE - 5;
    *q++ = 0x10;
    if (ts_st->discontinuity) {
        q[-1] |= 0x80;
        ts_st->discontinuity = 0;
    }


    q += write_pcr_bits(q, get_pcr(ts, s->pb));


    memset(q, 0xFF, TS_PACKET_SIZE - (q - buf));
    mpegts_prefix_m2ts_header(s);
    avio_write(s->pb, buf, TS_PACKET_SIZE);
}
