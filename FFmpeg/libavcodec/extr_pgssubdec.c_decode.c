
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_14__ {int err_recognition; } ;
struct TYPE_13__ {int* data; int size; } ;
struct TYPE_12__ {int pts; } ;
typedef TYPE_1__ AVSubtitle ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_EF_EXPLODE ;
 int AV_LOG_ERROR ;





 int av_log (TYPE_3__*,int ,char*,...) ;
 int bytestream_get_be16 (int const**) ;
 int bytestream_get_byte (int const**) ;
 int display_end_segment (TYPE_3__*,void*,int const*,int) ;
 int ff_dlog (TYPE_3__*,char*,...) ;
 int parse_object_segment (TYPE_3__*,int const*,int) ;
 int parse_palette_segment (TYPE_3__*,int const*,int) ;
 int parse_presentation_segment (TYPE_3__*,int const*,int,int ) ;

__attribute__((used)) static int decode(AVCodecContext *avctx, void *data, int *data_size,
                  AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;

    const uint8_t *buf_end;
    uint8_t segment_type;
    int segment_length;
    int i, ret;

    ff_dlog(avctx, "PGS sub packet:\n");

    for (i = 0; i < buf_size; i++) {
        ff_dlog(avctx, "%02x ", buf[i]);
        if (i % 16 == 15)
            ff_dlog(avctx, "\n");
    }

    if (i & 15)
        ff_dlog(avctx, "\n");

    *data_size = 0;


    if (buf_size < 3)
        return -1;

    buf_end = buf + buf_size;


    while (buf < buf_end) {
        segment_type = bytestream_get_byte(&buf);
        segment_length = bytestream_get_be16(&buf);

        ff_dlog(avctx, "Segment Length %d, Segment Type %x\n", segment_length, segment_type);

        if (segment_type != 132 && segment_length > buf_end - buf)
            break;

        ret = 0;
        switch (segment_type) {
        case 130:
            ret = parse_palette_segment(avctx, buf, segment_length);
            break;
        case 131:
            ret = parse_object_segment(avctx, buf, segment_length);
            break;
        case 129:
            ret = parse_presentation_segment(avctx, buf, segment_length, ((AVSubtitle*)(data))->pts);
            break;
        case 128:
            break;
        case 132:
            if (*data_size) {
                av_log(avctx, AV_LOG_ERROR, "Duplicate display segment\n");
                ret = AVERROR_INVALIDDATA;
                break;
            }
            ret = display_end_segment(avctx, data, buf, segment_length);
            if (ret >= 0)
                *data_size = ret;
            break;
        default:
            av_log(avctx, AV_LOG_ERROR, "Unknown subtitle segment type 0x%x, length %d\n",
                   segment_type, segment_length);
            ret = AVERROR_INVALIDDATA;
            break;
        }
        if (ret < 0 && (avctx->err_recognition & AV_EF_EXPLODE))
            return ret;

        buf += segment_length;
    }

    return buf_size;
}
