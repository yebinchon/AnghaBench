
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {char* key; char* value; struct TYPE_4__* next; } ;
typedef TYPE_1__ mdns_txt_linked_item_t ;
struct TYPE_5__ {TYPE_1__* txt; } ;
typedef TYPE_2__ mdns_service_t ;


 int HOOK_MALLOC_FAILED ;
 int _mdns_append_string (int *,int *,char*) ;
 int free (char*) ;
 scalar_t__ malloc (scalar_t__) ;
 int memcmp (int *,int const*,size_t) ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int _mdns_check_txt_collision(mdns_service_t * service, const uint8_t * data, size_t len)
{
    size_t data_len = 1;
    if (len == 1 && service->txt) {
        return -1;
    } else if (len > 1 && !service->txt) {
        return 1;
    } else if (len == 1 && !service->txt) {
        return 0;
    }

    mdns_txt_linked_item_t * txt = service->txt;
    while (txt) {
        data_len += 2 + strlen(service->txt->key) + strlen(service->txt->value);
        txt = txt->next;
    }

    if (len > data_len) {
        return 1;
    } else if (len < data_len) {
        return -1;
    }

    uint8_t ours[len];
    uint16_t index = 0;
    char * tmp;

    txt = service->txt;
    while (txt) {
        tmp = (char *)malloc(2 + strlen(txt->key) + strlen(txt->value));
        if (tmp) {
            sprintf(tmp, "%s=%s", txt->key, txt->value);
            _mdns_append_string(ours, &index, tmp);
            free(tmp);
        } else {
            HOOK_MALLOC_FAILED;

        }
        txt = txt->next;
    }

    int ret = memcmp(ours, data, len);
    if (ret > 0) {
        return -1;
    } else if (ret < 0) {
        return 1;
    }
    return 0;
}
