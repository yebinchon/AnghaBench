
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {char* hostname; } ;


 int MDNS_ANSWER_A ;
 int MDNS_ANSWER_A_TTL ;
 char* MDNS_DEFAULT_DOMAIN ;
 scalar_t__ MDNS_MAX_PACKET_SIZE ;
 scalar_t__ _mdns_append_fqdn (scalar_t__*,scalar_t__*,char const**,int) ;
 scalar_t__ _mdns_append_type (scalar_t__*,scalar_t__*,int ,int,int ) ;
 int _mdns_append_u8 (scalar_t__*,scalar_t__*,int) ;
 TYPE_1__* _mdns_server ;
 int _mdns_set_u16 (scalar_t__*,scalar_t__,int) ;
 scalar_t__ _str_null_or_empty (char const*) ;

__attribute__((used)) static uint16_t _mdns_append_a_record(uint8_t * packet, uint16_t * index, uint32_t ip, bool flush, bool bye)
{
    const char * str[2];
    uint16_t record_length = 0;
    uint8_t part_length;

    str[0] = _mdns_server->hostname;
    str[1] = MDNS_DEFAULT_DOMAIN;

    if (_str_null_or_empty(str[0])) {
        return 0;
    }


    part_length = _mdns_append_fqdn(packet, index, str, 2);
    if (!part_length) {
        return 0;
    }
    record_length += part_length;

    part_length = _mdns_append_type(packet, index, MDNS_ANSWER_A, flush, bye?0:MDNS_ANSWER_A_TTL);
    if (!part_length) {
        return 0;
    }
    record_length += part_length;

    uint16_t data_len_location = *index - 2;

    if ((*index + 3) >= MDNS_MAX_PACKET_SIZE) {
        return 0;
    }
    _mdns_append_u8(packet, index, ip & 0xFF);
    _mdns_append_u8(packet, index, (ip >> 8) & 0xFF);
    _mdns_append_u8(packet, index, (ip >> 16) & 0xFF);
    _mdns_append_u8(packet, index, (ip >> 24) & 0xFF);
    _mdns_set_u16(packet, data_len_location, 4);

    record_length += 4;
    return record_length;
}
