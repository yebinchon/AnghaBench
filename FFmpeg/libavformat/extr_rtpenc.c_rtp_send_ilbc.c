
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int block_align; } ;
struct TYPE_9__ {int max_delay; TYPE_2__** streams; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int time_base; TYPE_6__* codecpar; } ;
struct TYPE_7__ {scalar_t__ num_frames; scalar_t__ max_frames_per_packet; scalar_t__ buf; scalar_t__ buf_ptr; scalar_t__ cur_timestamp; scalar_t__ timestamp; } ;
typedef TYPE_1__ RTPMuxContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AV_TIME_BASE_Q ;
 scalar_t__ av_compare_ts (scalar_t__,int ,int ,int ) ;
 int av_get_audio_frame_duration2 (TYPE_6__*,int ) ;
 int ff_rtp_send_data (TYPE_3__*,scalar_t__,scalar_t__,int) ;
 int memcpy (scalar_t__,int const*,int) ;

__attribute__((used)) static int rtp_send_ilbc(AVFormatContext *s1, const uint8_t *buf, int size)
{
    RTPMuxContext *s = s1->priv_data;
    AVStream *st = s1->streams[0];
    int frame_duration = av_get_audio_frame_duration2(st->codecpar, 0);
    int frame_size = st->codecpar->block_align;
    int frames = size / frame_size;

    while (frames > 0) {
        if (s->num_frames > 0 &&
            av_compare_ts(s->cur_timestamp - s->timestamp, st->time_base,
                          s1->max_delay, AV_TIME_BASE_Q) >= 0) {
            ff_rtp_send_data(s1, s->buf, s->buf_ptr - s->buf, 1);
            s->num_frames = 0;
        }

        if (!s->num_frames) {
            s->buf_ptr = s->buf;
            s->timestamp = s->cur_timestamp;
        }
        memcpy(s->buf_ptr, buf, frame_size);
        frames--;
        s->num_frames++;
        s->buf_ptr += frame_size;
        buf += frame_size;
        s->cur_timestamp += frame_duration;

        if (s->num_frames == s->max_frames_per_packet) {
            ff_rtp_send_data(s1, s->buf, s->buf_ptr - s->buf, 1);
            s->num_frames = 0;
        }
    }
    return 0;
}
