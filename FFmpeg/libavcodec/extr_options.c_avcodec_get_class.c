
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVClass ;


 int const av_codec_context_class ;

const AVClass *avcodec_get_class(void)
{
    return &av_codec_context_class;
}
