
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int TAKStreamInfo ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int ff_tak_parse_streaminfo (int *,int *) ;
 int init_get_bits8 (int *,int const*,int) ;

int avpriv_tak_parse_streaminfo(TAKStreamInfo *s, const uint8_t *buf, int size)
{
    GetBitContext gb;
    int ret = init_get_bits8(&gb, buf, size);

    if (ret < 0)
        return AVERROR_INVALIDDATA;

    ff_tak_parse_streaminfo(s, &gb);

    return 0;
}
