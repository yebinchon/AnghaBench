
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AMF_DATA_TYPE_NUMBER ;
 int av_double2int (double) ;
 int bytestream_put_be64 (int **,int ) ;
 int bytestream_put_byte (int **,int ) ;

void ff_amf_write_number(uint8_t **dst, double val)
{
    bytestream_put_byte(dst, AMF_DATA_TYPE_NUMBER);
    bytestream_put_be64(dst, av_double2int(val));
}
