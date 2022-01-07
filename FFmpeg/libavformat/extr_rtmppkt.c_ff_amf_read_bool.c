
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetByteContext ;


 int AMF_DATA_TYPE_BOOL ;
 int AVERROR_INVALIDDATA ;
 int bytestream2_get_byte (int *) ;

int ff_amf_read_bool(GetByteContext *bc, int *val)
{
    if (bytestream2_get_byte(bc) != AMF_DATA_TYPE_BOOL)
        return AVERROR_INVALIDDATA;
    *val = bytestream2_get_byte(bc);
    return 0;
}
