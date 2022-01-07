
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_7__ {int index; } ;
struct TYPE_6__ {scalar_t__ timestamp; int* frame; int frame_size; int pgroup; int width; int xinc; } ;
typedef TYPE_1__ PayloadContext ;
typedef TYPE_2__ AVStream ;
typedef int AVPacket ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 int ENOMEM ;
 int RTP_FLAG_MARKER ;
 int av_log (int *,int ,char*) ;
 int* av_malloc (int) ;
 int memcpy (int*,int const*,int) ;
 int rfc4175_finalize_packet (TYPE_1__*,int *,int ) ;

__attribute__((used)) static int rfc4175_handle_packet(AVFormatContext *ctx, PayloadContext *data,
                                 AVStream *st, AVPacket *pkt, uint32_t *timestamp,
                                 const uint8_t * buf, int len,
                                 uint16_t seq, int flags)
{
    int length, line, offset, cont;
    const uint8_t *headers = buf + 2;
    const uint8_t *payload = buf + 2;
    int payload_len = len - 2;
    int missed_last_packet = 0;

    uint8_t *dest;

    if (*timestamp != data->timestamp) {
        if (data->frame) {







            av_log(ctx, AV_LOG_ERROR, "Missed previous RTP Marker\n");
            missed_last_packet = 1;
            rfc4175_finalize_packet(data, pkt, st->index);
        }

        data->frame = av_malloc(data->frame_size);

        data->timestamp = *timestamp;

        if (!data->frame) {
            av_log(ctx, AV_LOG_ERROR, "Out of memory.\n");
            return AVERROR(ENOMEM);
        }
    }





    do {
        if (payload_len < 6)
            return AVERROR_INVALIDDATA;

        cont = payload[4] & 0x80;
        payload += 6;
        payload_len -= 6;
    } while (cont);


    do {
        int copy_offset;

        if (payload_len < data->pgroup)
            return AVERROR_INVALIDDATA;

        length = (headers[0] << 8) | headers[1];
        line = ((headers[2] & 0x7f) << 8) | headers[3];
        offset = ((headers[4] & 0x7f) << 8) | headers[5];
        cont = headers[4] & 0x80;
        headers += 6;

        if (length % data->pgroup)
            return AVERROR_INVALIDDATA;

        if (length > payload_len)
            length = payload_len;


        copy_offset = (line * data->width + offset) * data->pgroup / data->xinc;
        if (copy_offset + length > data->frame_size)
            return AVERROR_INVALIDDATA;

        dest = data->frame + copy_offset;
        memcpy(dest, payload, length);

        payload += length;
        payload_len -= length;
    } while (cont);

    if ((flags & RTP_FLAG_MARKER)) {
        return rfc4175_finalize_packet(data, pkt, st->index);
    } else if (missed_last_packet) {
        return 0;
    }

    return AVERROR(EAGAIN);
}
