
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {char* key; char* value; struct TYPE_5__* next; } ;
typedef TYPE_1__ mdns_txt_linked_item_t ;
struct TYPE_6__ {char* service; char* proto; TYPE_1__* txt; } ;
typedef TYPE_2__ mdns_service_t ;


 int HOOK_MALLOC_FAILED ;
 int MDNS_ANSWER_TXT ;
 int MDNS_ANSWER_TXT_TTL ;
 char* MDNS_DEFAULT_DOMAIN ;
 scalar_t__ _mdns_append_fqdn (scalar_t__*,int*,char const**,int) ;
 scalar_t__ _mdns_append_string (scalar_t__*,int*,char*) ;
 scalar_t__ _mdns_append_type (scalar_t__*,int*,int ,int,int ) ;
 char* _mdns_get_service_instance_name (TYPE_2__*) ;
 int _mdns_set_u16 (scalar_t__*,int,int) ;
 int free (char*) ;
 scalar_t__ malloc (scalar_t__) ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static uint16_t _mdns_append_txt_record(uint8_t * packet, uint16_t * index, mdns_service_t * service, bool flush, bool bye)
{
    const char * str[4];
    uint16_t record_length = 0;
    uint8_t part_length;

    if (service == ((void*)0)) {
        return 0;
    }

    str[0] = _mdns_get_service_instance_name(service);
    str[1] = service->service;
    str[2] = service->proto;
    str[3] = MDNS_DEFAULT_DOMAIN;

    if (!str[0]) {
        return 0;
    }

    part_length = _mdns_append_fqdn(packet, index, str, 4);
    if (!part_length) {
        return 0;
    }
    record_length += part_length;

    part_length = _mdns_append_type(packet, index, MDNS_ANSWER_TXT, flush, bye?0:MDNS_ANSWER_TXT_TTL);
    if (!part_length) {
        return 0;
    }
    record_length += part_length;

    uint16_t data_len_location = *index - 2;
    uint16_t data_len = 0;

    char * tmp;
    mdns_txt_linked_item_t * txt = service->txt;
    while (txt) {
        tmp = (char *)malloc(2 + strlen(txt->key) + strlen(txt->value));
        if (tmp) {
            sprintf(tmp, "%s=%s", txt->key, txt->value);
            uint8_t l = _mdns_append_string(packet, index, tmp);
            free(tmp);
            if (!l) {
                return 0;
            }
            data_len += l;
        } else {
            HOOK_MALLOC_FAILED;

        }
        txt = txt->next;
    }
    if (!data_len) {
        data_len = 1;
        packet[*index] = 0;
        *index = *index + 1;
    }
    _mdns_set_u16(packet, data_len_location, data_len);
    record_length += data_len;
    return record_length;
}
