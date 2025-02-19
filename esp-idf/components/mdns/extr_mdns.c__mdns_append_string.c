
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ MDNS_MAX_PACKET_SIZE ;
 int _mdns_append_u8 (scalar_t__*,scalar_t__*,scalar_t__) ;
 int memcpy (scalar_t__*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static inline uint8_t _mdns_append_string(uint8_t * packet, uint16_t * index, const char * string)
{
    uint8_t len = strlen(string);
    if ((*index + len + 1) >= MDNS_MAX_PACKET_SIZE) {
        return 0;
    }
    _mdns_append_u8(packet, index, len);
    memcpy(packet + *index, string, len);
    *index += len;
    return len + 1;
}
