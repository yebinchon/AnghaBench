
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ MDNS_MAX_PACKET_SIZE ;
 int _mdns_append_u8 (int*,scalar_t__*,scalar_t__) ;

__attribute__((used)) static inline uint8_t _mdns_append_u16(uint8_t * packet, uint16_t * index, uint16_t value)
{
    if ((*index + 1) >= MDNS_MAX_PACKET_SIZE) {
        return 0;
    }
    _mdns_append_u8(packet, index, (value >> 8) & 0xFF);
    _mdns_append_u8(packet, index, value & 0xFF);
    return 2;
}
