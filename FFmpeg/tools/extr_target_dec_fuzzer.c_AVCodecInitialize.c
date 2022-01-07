
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
typedef int AVCodec ;


 int * avcodec_find_decoder (int) ;
 int error (char*) ;

__attribute__((used)) static AVCodec *AVCodecInitialize(enum AVCodecID codec_id)
{
    AVCodec *res;

    res = avcodec_find_decoder(codec_id);
    if (!res)
        error("Failed to find decoder");
    return res;
}
