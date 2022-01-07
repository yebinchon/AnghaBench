
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;



__attribute__((used)) static int write_pcr_bits(uint8_t *buf, int64_t pcr)
{
    int64_t pcr_low = pcr % 300, pcr_high = pcr / 300;

    *buf++ = pcr_high >> 25;
    *buf++ = pcr_high >> 17;
    *buf++ = pcr_high >> 9;
    *buf++ = pcr_high >> 1;
    *buf++ = pcr_high << 7 | pcr_low >> 8 | 0x7e;
    *buf++ = pcr_low;

    return 6;
}
