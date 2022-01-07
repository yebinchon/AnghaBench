
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int max_delay; TYPE_2__** streams; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int time_base; } ;
struct TYPE_6__ {int max_frames_per_packet; int* buf_ptr; int* buf; int num_frames; int max_payload_size; scalar_t__ cur_timestamp; scalar_t__ timestamp; } ;
typedef TYPE_1__ RTPMuxContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AV_TIME_BASE_Q ;
 scalar_t__ av_compare_ts (scalar_t__,int ,int ,int ) ;
 int ff_rtp_send_data (TYPE_3__*,int*,int,int) ;
 int memcpy (int*,int const*,int) ;
 int memmove (int*,int*,int) ;

void ff_rtp_send_amr(AVFormatContext *s1, const uint8_t *buff, int size)
{
    RTPMuxContext *s = s1->priv_data;
    AVStream *st = s1->streams[0];
    int max_header_toc_size = 1 + s->max_frames_per_packet;
    uint8_t *p;
    int len;


    len = s->buf_ptr - s->buf;
    if (s->num_frames &&
        (s->num_frames == s->max_frames_per_packet ||
         len + size - 1 > s->max_payload_size ||
         av_compare_ts(s->cur_timestamp - s->timestamp, st->time_base,
                       s1->max_delay, AV_TIME_BASE_Q) >= 0)) {
        int header_size = s->num_frames + 1;
        p = s->buf + max_header_toc_size - header_size;
        if (p != s->buf)
            memmove(p, s->buf, header_size);

        ff_rtp_send_data(s1, p, s->buf_ptr - p, 1);

        s->num_frames = 0;
    }

    if (!s->num_frames) {
        s->buf[0] = 0xf0;
        s->buf_ptr = s->buf + max_header_toc_size;
        s->timestamp = s->cur_timestamp;
    } else {

        s->buf[1 + s->num_frames - 1] |= 0x80;
    }


    s->buf[1 + s->num_frames++] = buff[0] & 0x7C;
    buff++;
    size--;
    memcpy(s->buf_ptr, buff, size);
    s->buf_ptr += size;
}
