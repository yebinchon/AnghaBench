
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_11__ {int data; int stream_index; } ;
struct TYPE_10__ {int index; } ;
struct TYPE_9__ {int last_frame; unsigned int nr_frames; int fragment; int timestamp; } ;
typedef TYPE_1__ PayloadContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int EAGAIN ;
 int ENOMEM ;
 int RTP_AC3_PAYLOAD_HEADER_SIZE ;
 int RTP_FLAG_MARKER ;
 int av_log (int *,int ,char*,...) ;
 int av_new_packet (TYPE_3__*,int) ;
 int avio_open_dyn_buf (int *) ;
 int avio_write (int ,int const*,int) ;
 int ff_rtp_finalize_packet (TYPE_3__*,int *,int ) ;
 int ffio_free_dyn_buf (int *) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static int ac3_handle_packet(AVFormatContext *ctx, PayloadContext *data,
                             AVStream *st, AVPacket *pkt, uint32_t *timestamp,
                             const uint8_t *buf, int len, uint16_t seq,
                             int flags)
{
    unsigned frame_type;
    unsigned nr_frames;
    int err;

    if (len < RTP_AC3_PAYLOAD_HEADER_SIZE + 1) {
        av_log(ctx, AV_LOG_ERROR, "Invalid %d bytes packet\n", len);
        return AVERROR_INVALIDDATA;
    }

    frame_type = buf[0] & 0x3;
    nr_frames = buf[1];
    buf += RTP_AC3_PAYLOAD_HEADER_SIZE;
    len -= RTP_AC3_PAYLOAD_HEADER_SIZE;

    switch (frame_type) {
    case 0:
        if (!nr_frames) {
            av_log(ctx, AV_LOG_ERROR, "Invalid AC3 packet data\n");
            return AVERROR_INVALIDDATA;
        }
        if (av_new_packet(pkt, len)) {
            av_log(ctx, AV_LOG_ERROR, "Out of memory.\n");
            return AVERROR(ENOMEM);
        }

        pkt->stream_index = st->index;
        memcpy(pkt->data, buf, len);
        return 0;

    case 1:
    case 2:
        ffio_free_dyn_buf(&data->fragment);

        data->last_frame = 1;
        data->nr_frames = nr_frames;
        err = avio_open_dyn_buf(&data->fragment);
        if (err < 0)
            return err;

        avio_write(data->fragment, buf, len);
        data->timestamp = *timestamp;
        return AVERROR(EAGAIN);

    case 3:
        if (!data->fragment) {
            av_log(ctx, AV_LOG_WARNING,
                   "Received packet without a start fragment; dropping.\n");
            return AVERROR(EAGAIN);
        }
        if (nr_frames != data->nr_frames ||
            data->timestamp != *timestamp) {
            ffio_free_dyn_buf(&data->fragment);
            av_log(ctx, AV_LOG_ERROR, "Invalid packet received\n");
            return AVERROR_INVALIDDATA;
        }

        avio_write(data->fragment, buf, len);
        data->last_frame++;
    }

    if (!(flags & RTP_FLAG_MARKER))
        return AVERROR(EAGAIN);

    if (data->last_frame != data->nr_frames) {
        ffio_free_dyn_buf(&data->fragment);
        av_log(ctx, AV_LOG_ERROR, "Missed %d packets\n",
               data->nr_frames - data->last_frame);
        return AVERROR_INVALIDDATA;
    }

    err = ff_rtp_finalize_packet(pkt, &data->fragment, st->index);
    if (err < 0) {
        av_log(ctx, AV_LOG_ERROR,
               "Error occurred when getting fragment buffer.\n");
        return err;
    }

    return 0;
}
