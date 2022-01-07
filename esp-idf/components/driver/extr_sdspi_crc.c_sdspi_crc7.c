
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int* crc7_table ;

uint8_t sdspi_crc7(const uint8_t *data, size_t size)
{
    uint8_t result = 0;
    for (size_t i = 0; i < size; ++i) {
        result = crc7_table[(result << 1) ^ data[i]];
    }
    return result;
}
