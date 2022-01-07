
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static uint16_t qdm2_packet_checksum(const uint8_t *data, int length, int value)
{
    int i;

    for (i = 0; i < length; i++)
        value -= data[i];

    return (uint16_t)(value & 0xffff);
}
