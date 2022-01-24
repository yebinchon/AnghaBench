#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/ * result; int /*<<< orphan*/  done_semaphore; } ;
typedef  TYPE_1__ mdns_search_once_t ;
typedef  int /*<<< orphan*/  mdns_result_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_SEARCH_ADD ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  _mdns_server ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

esp_err_t FUNC5(const char * name, const char * service, const char * proto, uint16_t type, uint32_t timeout, size_t max_results, mdns_result_t ** results)
{
    mdns_search_once_t * search = NULL;

    *results = NULL;

    if (!_mdns_server) {
        return ESP_ERR_INVALID_STATE;
    }

    if (!timeout || FUNC3(service) != FUNC3(proto)) {
        return ESP_ERR_INVALID_ARG;
    }

    search = FUNC1(name, service, proto, type, timeout, max_results);
    if (!search) {
        return ESP_ERR_NO_MEM;
    }

    if (FUNC2(ACTION_SEARCH_ADD, search)) {
        FUNC0(search);
        return ESP_ERR_NO_MEM;
    }
    FUNC4(search->done_semaphore, portMAX_DELAY);

    *results = search->result;
    FUNC0(search);

    return ESP_OK;
}