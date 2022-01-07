
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_3__ {char* extradata; int channels; int sample_rate; int initial_padding; } ;
typedef TYPE_1__ AVCodecContext ;


 int bytestream_put_buffer (char**,char const*,int) ;
 int bytestream_put_byte (char**,int) ;
 int bytestream_put_le16 (char**,int ) ;
 int bytestream_put_le32 (char**,int ) ;

__attribute__((used)) static void libopus_write_header(AVCodecContext *avctx, int stream_count,
                                 int coupled_stream_count,
                                 int mapping_family,
                                 const uint8_t *channel_mapping)
{
    uint8_t *p = avctx->extradata;
    int channels = avctx->channels;

    bytestream_put_buffer(&p, "OpusHead", 8);
    bytestream_put_byte(&p, 1);
    bytestream_put_byte(&p, channels);
    bytestream_put_le16(&p, avctx->initial_padding);
    bytestream_put_le32(&p, avctx->sample_rate);
    bytestream_put_le16(&p, 0);


    bytestream_put_byte(&p, mapping_family);
    if (mapping_family != 0) {
        bytestream_put_byte(&p, stream_count);
        bytestream_put_byte(&p, coupled_stream_count);
        bytestream_put_buffer(&p, channel_mapping, channels);
    }
}
