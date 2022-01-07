
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {int started_at; int * next; scalar_t__ sent_at; int state; int * result; int max_results; scalar_t__ num_results; int timeout; int type; void* proto; void* service; void* instance; int done_semaphore; } ;
typedef TYPE_1__ mdns_search_once_t ;


 int HOOK_MALLOC_FAILED ;
 scalar_t__ MDNS_NAME_BUF_LEN ;
 int SEARCH_INIT ;
 int _mdns_search_free (TYPE_1__*) ;
 int _str_null_or_empty (char const*) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int portTICK_PERIOD_MS ;
 void* strndup (char const*,scalar_t__) ;
 int xSemaphoreCreateBinary () ;
 int xTaskGetTickCount () ;

__attribute__((used)) static mdns_search_once_t * _mdns_search_init(const char * name, const char * service, const char * proto, uint16_t type, uint32_t timeout, uint8_t max_results)
{
    mdns_search_once_t * search = (mdns_search_once_t *)malloc(sizeof(mdns_search_once_t));
    if (!search) {
        HOOK_MALLOC_FAILED;
        return ((void*)0);
    }
    memset(search, 0, sizeof(mdns_search_once_t));

    search->done_semaphore = xSemaphoreCreateBinary();
    if (!search->done_semaphore) {
        free(search);
        return ((void*)0);
    }

    if (!_str_null_or_empty(name)) {
        search->instance = strndup(name, MDNS_NAME_BUF_LEN-1);
        if (!search->instance) {
            _mdns_search_free(search);
            return ((void*)0);
        }
    }

    if (!_str_null_or_empty(service)) {
        search->service = strndup(service, MDNS_NAME_BUF_LEN-1);
        if (!search->service) {
            _mdns_search_free(search);
            return ((void*)0);
        }
    }

    if (!_str_null_or_empty(proto)) {
        search->proto = strndup(proto, MDNS_NAME_BUF_LEN-1);
        if (!search->proto) {
            _mdns_search_free(search);
            return ((void*)0);
        }
    }

    search->type = type;
    search->timeout = timeout;
    search->num_results = 0;
    search->max_results = max_results;
    search->result = ((void*)0);
    search->state = SEARCH_INIT;
    search->sent_at = 0;
    search->started_at = xTaskGetTickCount() * portTICK_PERIOD_MS;
    search->next = ((void*)0);

    return search;
}
