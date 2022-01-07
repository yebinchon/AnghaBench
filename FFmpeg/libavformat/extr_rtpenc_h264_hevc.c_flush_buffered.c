
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_10__ {TYPE_2__** streams; TYPE_3__* priv_data; } ;
struct TYPE_9__ {scalar_t__ buf_ptr; scalar_t__ buf; int buffered_nals; } ;
struct TYPE_8__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {int codec_id; } ;
typedef TYPE_3__ RTPMuxContext ;
typedef TYPE_4__ AVFormatContext ;


 int AV_CODEC_ID_H264 ;
 int ff_rtp_send_data (TYPE_4__*,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void flush_buffered(AVFormatContext *s1, int last)
{
    RTPMuxContext *s = s1->priv_data;
    if (s->buf_ptr != s->buf) {


        if (s->buffered_nals == 1) {
            enum AVCodecID codec = s1->streams[0]->codecpar->codec_id;
            if (codec == AV_CODEC_ID_H264)
                ff_rtp_send_data(s1, s->buf + 3, s->buf_ptr - s->buf - 3, last);
            else
                ff_rtp_send_data(s1, s->buf + 4, s->buf_ptr - s->buf - 4, last);
        } else
            ff_rtp_send_data(s1, s->buf, s->buf_ptr - s->buf, last);
    }
    s->buf_ptr = s->buf;
    s->buffered_nals = 0;
}
