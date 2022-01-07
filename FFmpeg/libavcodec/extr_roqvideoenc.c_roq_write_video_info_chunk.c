
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int out_buf; int height; int width; } ;
typedef TYPE_1__ RoqContext ;


 int RoQ_INFO ;
 int bytestream_put_byte (int *,int) ;
 int bytestream_put_le16 (int *,int ) ;
 int bytestream_put_le32 (int *,int) ;

__attribute__((used)) static void roq_write_video_info_chunk(RoqContext *enc)
{

    bytestream_put_le16(&enc->out_buf, RoQ_INFO);


    bytestream_put_le32(&enc->out_buf, 8);


    bytestream_put_byte(&enc->out_buf, 0x00);
    bytestream_put_byte(&enc->out_buf, 0x00);


    bytestream_put_le16(&enc->out_buf, enc->width);


    bytestream_put_le16(&enc->out_buf, enc->height);


    bytestream_put_byte(&enc->out_buf, 0x08);
    bytestream_put_byte(&enc->out_buf, 0x00);
    bytestream_put_byte(&enc->out_buf, 0x04);
    bytestream_put_byte(&enc->out_buf, 0x00);
}
