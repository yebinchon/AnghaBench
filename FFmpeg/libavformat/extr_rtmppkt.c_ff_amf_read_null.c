
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetByteContext ;


 scalar_t__ AMF_DATA_TYPE_NULL ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ bytestream2_get_byte (int *) ;

int ff_amf_read_null(GetByteContext *bc)
{
    if (bytestream2_get_byte(bc) != AMF_DATA_TYPE_NULL)
        return AVERROR_INVALIDDATA;
    return 0;
}
