
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetByteContext ;


 scalar_t__ AMF_DATA_TYPE_STRING ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ bytestream2_get_byte (int *) ;
 int ff_amf_get_string (int *,int *,int,int*) ;

int ff_amf_read_string(GetByteContext *bc, uint8_t *str,
                       int strsize, int *length)
{
    if (bytestream2_get_byte(bc) != AMF_DATA_TYPE_STRING)
        return AVERROR_INVALIDDATA;
    return ff_amf_get_string(bc, str, strsize, length);
}
