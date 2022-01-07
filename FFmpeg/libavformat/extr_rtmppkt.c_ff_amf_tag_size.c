
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetByteContext ;


 int amf_tag_skip (int *) ;
 int av_assert0 (int) ;
 scalar_t__ bytestream2_get_bytes_left (int *) ;
 int bytestream2_init (int *,int const*,int) ;
 int bytestream2_tell (int *) ;

int ff_amf_tag_size(const uint8_t *data, const uint8_t *data_end)
{
    GetByteContext gb;
    int ret;

    if (data >= data_end)
        return -1;

    bytestream2_init(&gb, data, data_end - data);

    ret = amf_tag_skip(&gb);
    if (ret < 0 || bytestream2_get_bytes_left(&gb) <= 0)
        return -1;
    av_assert0(bytestream2_tell(&gb) >= 0 && bytestream2_tell(&gb) <= data_end - data);
    return bytestream2_tell(&gb);
}
