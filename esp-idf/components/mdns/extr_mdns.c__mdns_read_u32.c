
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef size_t uint16_t ;



__attribute__((used)) static inline uint32_t _mdns_read_u32(const uint8_t * packet, uint16_t index)
{
    return (uint32_t)(packet[index]) << 24 | (uint32_t)(packet[index+1]) << 16 | (uint32_t)(packet[index+2]) << 8 | packet[index+3];
}
