
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int size; int* data; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVBSFContext ;



 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_RB16 (int ) ;
 int AV_RL32 (char*) ;



 int SOI ;

 int av_log (int *,int ,char*) ;
 int av_new_packet (TYPE_1__*,int) ;
 int av_packet_copy_props (TYPE_1__*,TYPE_1__*) ;
 int av_packet_free (TYPE_1__**) ;
 int av_packet_move_ref (TYPE_1__*,TYPE_1__*) ;
 int av_packet_unref (TYPE_1__*) ;
 int bytestream_put_be16 (int**,int) ;
 int bytestream_put_be32 (int**,int) ;
 int bytestream_put_buffer (int**,char*,int) ;
 int bytestream_put_byte (int**,int) ;
 int ff_bsf_get_packet (int *,TYPE_1__**) ;

__attribute__((used)) static int mjpega_dump_header(AVBSFContext *ctx, AVPacket *out)
{
    AVPacket *in;
    uint8_t *out_buf;
    unsigned dqt = 0, dht = 0, sof0 = 0;
    int ret = 0, i;

    ret = ff_bsf_get_packet(ctx, &in);
    if (ret < 0)
        return ret;

    ret = av_new_packet(out, in->size + 44);
    if (ret < 0)
        goto fail;

    ret = av_packet_copy_props(out, in);
    if (ret < 0)
        goto fail;

    out_buf = out->data;
    bytestream_put_byte(&out_buf, 0xff);
    bytestream_put_byte(&out_buf, SOI);
    bytestream_put_byte(&out_buf, 0xff);
    bytestream_put_byte(&out_buf, 132);
    bytestream_put_be16(&out_buf, 42);
    bytestream_put_be32(&out_buf, 0);
    bytestream_put_buffer(&out_buf, "mjpg", 4);
    bytestream_put_be32(&out_buf, in->size + 44);
    bytestream_put_be32(&out_buf, in->size + 44);
    bytestream_put_be32(&out_buf, 0);

    for (i = 0; i < in->size - 1; i++) {
        if (in->data[i] == 0xff) {
            switch (in->data[i + 1]) {
            case 130: dqt = i + 46; break;
            case 131: dht = i + 46; break;
            case 129: sof0 = i + 46; break;
            case 128:
                bytestream_put_be32(&out_buf, dqt);
                bytestream_put_be32(&out_buf, dht);
                bytestream_put_be32(&out_buf, sof0);
                bytestream_put_be32(&out_buf, i + 46);
                bytestream_put_be32(&out_buf, i + 46 + AV_RB16(in->data + i + 2));
                bytestream_put_buffer(&out_buf, in->data + 2, in->size - 2);

                out->size = out_buf - out->data;
                av_packet_free(&in);
                return 0;
            case 132:
                if (i + 8 < in->size && AV_RL32(in->data + i + 8) == AV_RL32("mjpg")) {
                    av_log(ctx, AV_LOG_ERROR, "bitstream already formatted\n");
                    av_packet_unref(out);
                    av_packet_move_ref(out, in);
                    av_packet_free(&in);
                    return 0;
                }
            }
        }
    }
    av_log(ctx, AV_LOG_ERROR, "could not find SOS marker in bitstream\n");
fail:
    av_packet_unref(out);
    av_packet_free(&in);
    return AVERROR_INVALIDDATA;
}
