
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int MPEG4AudioConfig ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int ff_mpeg4audio_get_config_gb (int *,int *,int,int *) ;
 int init_get_bits (int *,int const*,int) ;

int avpriv_mpeg4audio_get_config(MPEG4AudioConfig *c, const uint8_t *buf,
                                 int bit_size, int sync_extension)
{
    GetBitContext gb;
    int ret;

    if (bit_size <= 0)
        return AVERROR_INVALIDDATA;

    ret = init_get_bits(&gb, buf, bit_size);
    if (ret < 0)
        return ret;

    return ff_mpeg4audio_get_config_gb(c, &gb, sync_extension, ((void*)0));
}
