
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AMF_DATA_TYPE_STRING ;
 int bytestream_put_be16 (int **,int) ;
 int bytestream_put_buffer (int **,char const*,int) ;
 int bytestream_put_byte (int **,int ) ;
 int strlen (char const*) ;

void ff_amf_write_string2(uint8_t **dst, const char *str1, const char *str2)
{
    int len1 = 0, len2 = 0;
    if (str1)
        len1 = strlen(str1);
    if (str2)
        len2 = strlen(str2);
    bytestream_put_byte(dst, AMF_DATA_TYPE_STRING);
    bytestream_put_be16(dst, len1 + len2);
    bytestream_put_buffer(dst, str1, len1);
    bytestream_put_buffer(dst, str2, len2);
}
