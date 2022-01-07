
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* i ;
struct TYPE_4__ {int code; int stereo; int config; int frame_count; int vbr; int* frame_offset; int* frame_size; int packet_size; int data_size; int frame_duration; int bandwidth; int mode; } ;
typedef TYPE_1__ OpusPacket ;


 int AVERROR_INVALIDDATA ;
 int MAX_FRAMES ;
 int MAX_FRAME_SIZE ;
 int MAX_PACKET_DUR ;
 int OPUS_BANDWIDTH_SUPERWIDEBAND ;
 int OPUS_MODE_CELT ;
 int OPUS_MODE_HYBRID ;
 int OPUS_MODE_SILK ;
 int memset (TYPE_1__*,int ,int) ;
 int* opus_frame_duration ;
 int xiph_lacing_16bit (int const**,int const*) ;
 int xiph_lacing_full (int const**,int const*) ;

int ff_opus_parse_packet(OpusPacket *pkt, const uint8_t *buf, int buf_size,
                         int self_delimiting)
{
    const uint8_t *ptr = buf;
    const uint8_t *end = buf + buf_size;
    int padding = 0;
    int frame_bytes, i;

    if (buf_size < 1)
        goto fail;


    i = *ptr++;
    pkt->code = (i ) & 0x3;
    pkt->stereo = (i >> 2) & 0x1;
    pkt->config = (i >> 3) & 0x1F;


    if (pkt->code >= 2 && buf_size < 2)
        goto fail;

    switch (pkt->code) {
    case 0:

        pkt->frame_count = 1;
        pkt->vbr = 0;

        if (self_delimiting) {
            int len = xiph_lacing_16bit(&ptr, end);
            if (len < 0 || len > end - ptr)
                goto fail;
            end = ptr + len;
            buf_size = end - buf;
        }

        frame_bytes = end - ptr;
        if (frame_bytes > MAX_FRAME_SIZE)
            goto fail;
        pkt->frame_offset[0] = ptr - buf;
        pkt->frame_size[0] = frame_bytes;
        break;
    case 1:

        pkt->frame_count = 2;
        pkt->vbr = 0;

        if (self_delimiting) {
            int len = xiph_lacing_16bit(&ptr, end);
            if (len < 0 || 2 * len > end - ptr)
                goto fail;
            end = ptr + 2 * len;
            buf_size = end - buf;
        }

        frame_bytes = end - ptr;
        if (frame_bytes & 1 || frame_bytes >> 1 > MAX_FRAME_SIZE)
            goto fail;
        pkt->frame_offset[0] = ptr - buf;
        pkt->frame_size[0] = frame_bytes >> 1;
        pkt->frame_offset[1] = pkt->frame_offset[0] + pkt->frame_size[0];
        pkt->frame_size[1] = frame_bytes >> 1;
        break;
    case 2:

        pkt->frame_count = 2;
        pkt->vbr = 1;


        frame_bytes = xiph_lacing_16bit(&ptr, end);
        if (frame_bytes < 0)
            goto fail;

        if (self_delimiting) {
            int len = xiph_lacing_16bit(&ptr, end);
            if (len < 0 || len + frame_bytes > end - ptr)
                goto fail;
            end = ptr + frame_bytes + len;
            buf_size = end - buf;
        }

        pkt->frame_offset[0] = ptr - buf;
        pkt->frame_size[0] = frame_bytes;


        frame_bytes = end - ptr - pkt->frame_size[0];
        if (frame_bytes < 0 || frame_bytes > MAX_FRAME_SIZE)
            goto fail;
        pkt->frame_offset[1] = pkt->frame_offset[0] + pkt->frame_size[0];
        pkt->frame_size[1] = frame_bytes;
        break;
    case 3:

        i = *ptr++;
        pkt->frame_count = (i ) & 0x3F;
        padding = (i >> 6) & 0x01;
        pkt->vbr = (i >> 7) & 0x01;

        if (pkt->frame_count == 0 || pkt->frame_count > MAX_FRAMES)
            goto fail;


        if (padding) {
            padding = xiph_lacing_full(&ptr, end);
            if (padding < 0)
                goto fail;
        }


        if (pkt->vbr) {


            int total_bytes = 0;
            for (i = 0; i < pkt->frame_count - 1; i++) {
                frame_bytes = xiph_lacing_16bit(&ptr, end);
                if (frame_bytes < 0)
                    goto fail;
                pkt->frame_size[i] = frame_bytes;
                total_bytes += frame_bytes;
            }

            if (self_delimiting) {
                int len = xiph_lacing_16bit(&ptr, end);
                if (len < 0 || len + total_bytes + padding > end - ptr)
                    goto fail;
                end = ptr + total_bytes + len + padding;
                buf_size = end - buf;
            }

            frame_bytes = end - ptr - padding;
            if (total_bytes > frame_bytes)
                goto fail;
            pkt->frame_offset[0] = ptr - buf;
            for (i = 1; i < pkt->frame_count; i++)
                pkt->frame_offset[i] = pkt->frame_offset[i-1] + pkt->frame_size[i-1];
            pkt->frame_size[pkt->frame_count-1] = frame_bytes - total_bytes;
        } else {


            if (self_delimiting) {
                frame_bytes = xiph_lacing_16bit(&ptr, end);
                if (frame_bytes < 0 || pkt->frame_count * frame_bytes + padding > end - ptr)
                    goto fail;
                end = ptr + pkt->frame_count * frame_bytes + padding;
                buf_size = end - buf;
            } else {
                frame_bytes = end - ptr - padding;
                if (frame_bytes % pkt->frame_count ||
                    frame_bytes / pkt->frame_count > MAX_FRAME_SIZE)
                    goto fail;
                frame_bytes /= pkt->frame_count;
            }

            pkt->frame_offset[0] = ptr - buf;
            pkt->frame_size[0] = frame_bytes;
            for (i = 1; i < pkt->frame_count; i++) {
                pkt->frame_offset[i] = pkt->frame_offset[i-1] + pkt->frame_size[i-1];
                pkt->frame_size[i] = frame_bytes;
            }
        }
    }

    pkt->packet_size = buf_size;
    pkt->data_size = pkt->packet_size - padding;


    pkt->frame_duration = opus_frame_duration[pkt->config];
    if (pkt->frame_duration * pkt->frame_count > MAX_PACKET_DUR)
        goto fail;


    if (pkt->config < 12) {
        pkt->mode = OPUS_MODE_SILK;
        pkt->bandwidth = pkt->config >> 2;
    } else if (pkt->config < 16) {
        pkt->mode = OPUS_MODE_HYBRID;
        pkt->bandwidth = OPUS_BANDWIDTH_SUPERWIDEBAND + (pkt->config >= 14);
    } else {
        pkt->mode = OPUS_MODE_CELT;
        pkt->bandwidth = (pkt->config - 16) >> 2;

        if (pkt->bandwidth)
            pkt->bandwidth++;
    }

    return 0;

fail:
    memset(pkt, 0, sizeof(*pkt));
    return AVERROR_INVALIDDATA;
}
