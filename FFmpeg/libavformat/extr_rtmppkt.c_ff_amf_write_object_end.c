
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AMF_DATA_TYPE_OBJECT_END ;
 int bytestream_put_be24 (int **,int ) ;

void ff_amf_write_object_end(uint8_t **dst)
{



    bytestream_put_be24(dst, AMF_DATA_TYPE_OBJECT_END);
}
