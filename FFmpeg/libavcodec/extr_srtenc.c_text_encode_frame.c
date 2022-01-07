
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVSubtitle ;
typedef int AVCodecContext ;


 int encode_frame (int *,unsigned char*,int,int const*,int *) ;
 int text_callbacks ;

__attribute__((used)) static int text_encode_frame(AVCodecContext *avctx,
                             unsigned char *buf, int bufsize, const AVSubtitle *sub)
{
    return encode_frame(avctx, buf, bufsize, sub, &text_callbacks);
}
