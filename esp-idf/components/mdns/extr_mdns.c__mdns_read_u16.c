
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t uint16_t ;



__attribute__((used)) static inline uint16_t _mdns_read_u16(const uint8_t * packet, uint16_t index)
{
    return (uint16_t)(packet[index]) << 8 | packet[index+1];
}
