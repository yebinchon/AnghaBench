
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetBitContext ;
typedef int DCACoreFrameHeader ;


 int AVERROR_INVALIDDATA ;
 scalar_t__ ff_dca_parse_core_frame_header (int *,int *) ;
 int init_get_bits8 (int *,int const*,int) ;

int avpriv_dca_parse_core_frame_header(DCACoreFrameHeader *h, const uint8_t *buf, int size)
{
    GetBitContext gb;
    int ret;

    ret = init_get_bits8(&gb, buf, size);
    if (ret < 0)
        return ret;

    if (ff_dca_parse_core_frame_header(h, &gb) < 0)
        return AVERROR_INVALIDDATA;

    return 0;
}
