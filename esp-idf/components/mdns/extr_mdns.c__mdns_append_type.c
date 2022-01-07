
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ MDNS_ANSWER_A ;
 scalar_t__ MDNS_ANSWER_AAAA ;
 scalar_t__ MDNS_ANSWER_PTR ;
 scalar_t__ MDNS_ANSWER_SRV ;
 scalar_t__ MDNS_ANSWER_TXT ;
 scalar_t__ MDNS_CLASS_IN ;
 scalar_t__ MDNS_CLASS_IN_FLUSH_CACHE ;
 scalar_t__ MDNS_MAX_PACKET_SIZE ;
 scalar_t__ MDNS_TYPE_A ;
 scalar_t__ MDNS_TYPE_AAAA ;
 scalar_t__ MDNS_TYPE_PTR ;
 scalar_t__ MDNS_TYPE_SRV ;
 scalar_t__ MDNS_TYPE_TXT ;
 int _mdns_append_u16 (scalar_t__*,scalar_t__*,scalar_t__) ;
 int _mdns_append_u32 (scalar_t__*,scalar_t__*,int ) ;

__attribute__((used)) static inline uint8_t _mdns_append_type(uint8_t * packet, uint16_t * index, uint8_t type, bool flush, uint32_t ttl)
{
    if ((*index + 10) >= MDNS_MAX_PACKET_SIZE) {
        return 0;
    }
    uint16_t clas = MDNS_CLASS_IN;
    if (flush) {
        clas = MDNS_CLASS_IN_FLUSH_CACHE;
    }
    if (type == MDNS_ANSWER_PTR) {
        _mdns_append_u16(packet, index, MDNS_TYPE_PTR);
        _mdns_append_u16(packet, index, clas);
    } else if (type == MDNS_ANSWER_TXT) {
        _mdns_append_u16(packet, index, MDNS_TYPE_TXT);
        _mdns_append_u16(packet, index, clas);
    } else if (type == MDNS_ANSWER_SRV) {
        _mdns_append_u16(packet, index, MDNS_TYPE_SRV);
        _mdns_append_u16(packet, index, clas);
    } else if (type == MDNS_ANSWER_A) {
        _mdns_append_u16(packet, index, MDNS_TYPE_A);
        _mdns_append_u16(packet, index, clas);
    } else if (type == MDNS_ANSWER_AAAA) {
        _mdns_append_u16(packet, index, MDNS_TYPE_AAAA);
        _mdns_append_u16(packet, index, clas);
    } else {
        return 0;
    }
    _mdns_append_u32(packet, index, ttl);
    _mdns_append_u16(packet, index, 0);
    return 10;
}
