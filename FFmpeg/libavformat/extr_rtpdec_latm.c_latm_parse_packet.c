
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_10__ {int stream_index; int data; } ;
struct TYPE_9__ {int index; } ;
struct TYPE_8__ {scalar_t__ timestamp; int* buf; scalar_t__ len; scalar_t__ pos; int * dyn_buf; } ;
typedef TYPE_1__ PayloadContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 int EIO ;
 int RTP_FLAG_MARKER ;
 int av_freep (int**) ;
 int av_log (int *,int ,char*) ;
 int av_new_packet (TYPE_3__*,int) ;
 scalar_t__ avio_close_dyn_buf (int *,int**) ;
 int avio_open_dyn_buf (int **) ;
 int avio_write (int *,int const*,int) ;
 int ffio_free_dyn_buf (int **) ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static int latm_parse_packet(AVFormatContext *ctx, PayloadContext *data,
                             AVStream *st, AVPacket *pkt, uint32_t *timestamp,
                             const uint8_t *buf, int len, uint16_t seq,
                             int flags)
{
    int ret, cur_len;

    if (buf) {
        if (!data->dyn_buf || data->timestamp != *timestamp) {
            av_freep(&data->buf);
            ffio_free_dyn_buf(&data->dyn_buf);

            data->timestamp = *timestamp;
            if ((ret = avio_open_dyn_buf(&data->dyn_buf)) < 0)
                return ret;
        }
        avio_write(data->dyn_buf, buf, len);

        if (!(flags & RTP_FLAG_MARKER))
            return AVERROR(EAGAIN);
        av_freep(&data->buf);
        data->len = avio_close_dyn_buf(data->dyn_buf, &data->buf);
        data->dyn_buf = ((void*)0);
        data->pos = 0;
    }

    if (!data->buf) {
        av_log(ctx, AV_LOG_ERROR, "No data available yet\n");
        return AVERROR(EIO);
    }

    cur_len = 0;
    while (data->pos < data->len) {
        uint8_t val = data->buf[data->pos++];
        cur_len += val;
        if (val != 0xff)
            break;
    }
    if (data->pos + cur_len > data->len) {
        av_log(ctx, AV_LOG_ERROR, "Malformed LATM packet\n");
        return AVERROR(EIO);
    }

    if ((ret = av_new_packet(pkt, cur_len)) < 0)
        return ret;
    memcpy(pkt->data, data->buf + data->pos, cur_len);
    data->pos += cur_len;
    pkt->stream_index = st->index;
    return data->pos < data->len;
}
