
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int channels; int initial_padding; int sample_rate; int * extradata; } ;
typedef TYPE_1__ AVCodecContext ;


 int bytestream_put_buffer (int **,char*,int) ;
 int bytestream_put_byte (int **,int) ;
 int bytestream_put_le16 (int **,int) ;
 int bytestream_put_le32 (int **,int ) ;

__attribute__((used)) static void opus_write_extradata(AVCodecContext *avctx)
{
    uint8_t *bs = avctx->extradata;

    bytestream_put_buffer(&bs, "OpusHead", 8);
    bytestream_put_byte (&bs, 0x1);
    bytestream_put_byte (&bs, avctx->channels);
    bytestream_put_le16 (&bs, avctx->initial_padding);
    bytestream_put_le32 (&bs, avctx->sample_rate);
    bytestream_put_le16 (&bs, 0x0);
    bytestream_put_byte (&bs, 0x0);
}
