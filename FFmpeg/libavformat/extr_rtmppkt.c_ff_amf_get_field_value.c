
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetByteContext ;


 int amf_get_field_value2 (int *,int const*,int *,int) ;
 int bytestream2_init (int *,int const*,int) ;

int ff_amf_get_field_value(const uint8_t *data, const uint8_t *data_end,
                           const uint8_t *name, uint8_t *dst, int dst_size)
{
    GetByteContext gb;

    if (data >= data_end)
        return -1;

    bytestream2_init(&gb, data, data_end - data);

    return amf_get_field_value2(&gb, name, dst, dst_size);
}
