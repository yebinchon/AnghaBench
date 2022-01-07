
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int esp_crc16_be (int ,int *,int) ;

uint16_t blufi_crc_checksum(uint8_t iv8, uint8_t *data, int len)
{

    return esp_crc16_be(0, data, len);
}
