
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int GetByteContext ;


 scalar_t__ AMF_DATA_TYPE_NUMBER ;
 int AVERROR_INVALIDDATA ;
 double av_int2double (int ) ;
 int bytestream2_get_be64 (int *) ;
 scalar_t__ bytestream2_get_byte (int *) ;

int ff_amf_read_number(GetByteContext *bc, double *val)
{
    uint64_t read;
    if (bytestream2_get_byte(bc) != AMF_DATA_TYPE_NUMBER)
        return AVERROR_INVALIDDATA;
    read = bytestream2_get_be64(bc);
    *val = av_int2double(read);
    return 0;
}
