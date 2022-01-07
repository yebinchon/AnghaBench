
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodecContext ;


 int teletext_close_decoder (int *) ;

__attribute__((used)) static void teletext_flush(AVCodecContext *avctx)
{
    teletext_close_decoder(avctx);
}
