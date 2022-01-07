
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_3__ {char* service; char* proto; } ;
typedef TYPE_1__ mdns_service_t ;


 int MDNS_ANSWER_PTR ;
 int MDNS_ANSWER_PTR_TTL ;
 char* MDNS_DEFAULT_DOMAIN ;
 scalar_t__ _mdns_append_fqdn (scalar_t__*,scalar_t__*,char const**,int) ;
 scalar_t__ _mdns_append_type (scalar_t__*,scalar_t__*,int ,int,int ) ;
 int _mdns_set_u16 (scalar_t__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static uint16_t _mdns_append_sdptr_record(uint8_t * packet, uint16_t * index, mdns_service_t * service, bool flush, bool bye)
{
    const char * str[3];
    const char * sd_str[4];
    uint16_t record_length = 0;
    uint8_t part_length;

    if (service == ((void*)0)) {
        return 0;
    }

    sd_str[0] = (char*)"_services";
    sd_str[1] = (char*)"_dns-sd";
    sd_str[2] = (char*)"_udp";
    sd_str[3] = MDNS_DEFAULT_DOMAIN;

    str[0] = service->service;
    str[1] = service->proto;
    str[2] = MDNS_DEFAULT_DOMAIN;

    part_length = _mdns_append_fqdn(packet, index, sd_str, 4);

    record_length += part_length;

    part_length = _mdns_append_type(packet, index, MDNS_ANSWER_PTR, flush, MDNS_ANSWER_PTR_TTL);
    if (!part_length) {
        return 0;
    }
    record_length += part_length;

    uint16_t data_len_location = *index - 2;
    part_length = _mdns_append_fqdn(packet, index, str, 3);
    if (!part_length) {
        return 0;
    }
    _mdns_set_u16(packet, data_len_location, part_length);
    record_length += part_length;
    return record_length;
}
