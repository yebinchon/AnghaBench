
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodecDescriptor ;


 int FF_ARRAY_ELEMS (int const*) ;
 int const* codec_descriptors ;

const AVCodecDescriptor *avcodec_descriptor_next(const AVCodecDescriptor *prev)
{
    if (!prev)
        return &codec_descriptors[0];
    if (prev - codec_descriptors < FF_ARRAY_ELEMS(codec_descriptors) - 1)
        return prev + 1;
    return ((void*)0);
}
