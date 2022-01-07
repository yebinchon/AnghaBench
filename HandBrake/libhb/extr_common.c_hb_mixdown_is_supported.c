
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 scalar_t__ hb_mixdown_has_codec_support (int,int ) ;
 scalar_t__ hb_mixdown_has_remix_support (int,int ) ;

int hb_mixdown_is_supported(int mixdown, uint32_t codec, uint64_t layout)
{
    return (hb_mixdown_has_codec_support(mixdown, codec) &&
            hb_mixdown_has_remix_support(mixdown, layout));
}
