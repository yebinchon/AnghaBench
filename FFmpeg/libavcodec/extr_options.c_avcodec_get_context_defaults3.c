
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodecContext ;
typedef int AVCodec ;


 int init_context_defaults (int *,int const*) ;

int avcodec_get_context_defaults3(AVCodecContext *s, const AVCodec *codec)
{
    return init_context_defaults(s, codec);
}
