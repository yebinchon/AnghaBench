#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_6__ {int started_at; int /*<<< orphan*/ * next; scalar_t__ sent_at; int /*<<< orphan*/  state; int /*<<< orphan*/ * result; int /*<<< orphan*/  max_results; scalar_t__ num_results; int /*<<< orphan*/  timeout; int /*<<< orphan*/  type; void* proto; void* service; void* instance; int /*<<< orphan*/  done_semaphore; } ;
typedef  TYPE_1__ mdns_search_once_t ;

/* Variables and functions */
 int /*<<< orphan*/  HOOK_MALLOC_FAILED ; 
 scalar_t__ MDNS_NAME_BUF_LEN ; 
 int /*<<< orphan*/  SEARCH_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int portTICK_PERIOD_MS ; 
 void* FUNC5 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 

__attribute__((used)) static mdns_search_once_t * FUNC8(const char * name, const char * service, const char * proto, uint16_t type, uint32_t timeout, uint8_t max_results)
{
    mdns_search_once_t * search = (mdns_search_once_t *)FUNC3(sizeof(mdns_search_once_t));
    if (!search) {
        HOOK_MALLOC_FAILED;
        return NULL;
    }
    FUNC4(search, 0, sizeof(mdns_search_once_t));

    search->done_semaphore = FUNC6();
    if (!search->done_semaphore) {
        FUNC2(search);
        return NULL;
    }

    if (!FUNC1(name)) {
        search->instance = FUNC5(name, MDNS_NAME_BUF_LEN-1);
        if (!search->instance) {
            FUNC0(search);
            return NULL;
        }
    }

    if (!FUNC1(service)) {
        search->service = FUNC5(service, MDNS_NAME_BUF_LEN-1);
        if (!search->service) {
            FUNC0(search);
            return NULL;
        }
    }

    if (!FUNC1(proto)) {
        search->proto = FUNC5(proto, MDNS_NAME_BUF_LEN-1);
        if (!search->proto) {
            FUNC0(search);
            return NULL;
        }
    }

    search->type = type;
    search->timeout = timeout;
    search->num_results = 0;
    search->max_results = max_results;
    search->result = NULL;
    search->state = SEARCH_INIT;
    search->sent_at = 0;
    search->started_at = FUNC7() * portTICK_PERIOD_MS;
    search->next = NULL;

    return search;
}