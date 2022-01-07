
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int MPEG4AudioConfig ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int ff_mpeg4audio_get_config_gb (int *,int *,int,void*) ;
 int init_get_bits8 (int *,int const*,int) ;

int avpriv_mpeg4audio_get_config2(MPEG4AudioConfig *c, const uint8_t *buf,
                                  int size, int sync_extension, void *logctx)
{
    GetBitContext gb;
    int ret;

    if (size <= 0)
        return AVERROR_INVALIDDATA;

    ret = init_get_bits8(&gb, buf, size);
    if (ret < 0)
        return ret;

    return ff_mpeg4audio_get_config_gb(c, &gb, sync_extension, logctx);
}
