
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AMF_DATA_TYPE_STRING ;
 int bytestream_put_be16 (int **,int ) ;
 int bytestream_put_buffer (int **,char const*,int ) ;
 int bytestream_put_byte (int **,int ) ;
 int strlen (char const*) ;

void ff_amf_write_string(uint8_t **dst, const char *str)
{
    bytestream_put_byte(dst, AMF_DATA_TYPE_STRING);
    bytestream_put_be16(dst, strlen(str));
    bytestream_put_buffer(dst, str, strlen(str));
}
