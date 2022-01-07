
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodecContext ;


 int vp8_decode_flush_impl (int *,int ) ;

__attribute__((used)) static void vp8_decode_flush(AVCodecContext *avctx)
{
    vp8_decode_flush_impl(avctx, 0);
}
