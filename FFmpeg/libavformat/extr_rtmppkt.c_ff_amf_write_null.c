
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AMF_DATA_TYPE_NULL ;
 int bytestream_put_byte (int **,int ) ;

void ff_amf_write_null(uint8_t **dst)
{
    bytestream_put_byte(dst, AMF_DATA_TYPE_NULL);
}
