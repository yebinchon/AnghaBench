#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  portTickType ;
typedef  int /*<<< orphan*/  mdns_txt_item_t ;
struct TYPE_9__ {TYPE_3__* service; } ;
struct TYPE_10__ {TYPE_1__ srv_add; } ;
struct TYPE_11__ {TYPE_2__ data; int /*<<< orphan*/  type; int /*<<< orphan*/ * next; int /*<<< orphan*/ * service; } ;
typedef  TYPE_3__ mdns_srv_item_t ;
typedef  int /*<<< orphan*/  mdns_service_t ;
typedef  TYPE_3__ mdns_action_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_12__ {int /*<<< orphan*/  action_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_SERVICE_ADD ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  HOOK_MALLOC_FAILED ; 
 int /*<<< orphan*/  MDNS_SERVICE_ADD_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const*,int /*<<< orphan*/ ,char const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (char const*,char const*) ; 
 TYPE_7__* _mdns_server ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (int) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ pdPASS ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ ) ; 
 size_t FUNC11 () ; 

esp_err_t FUNC12(const char * instance, const char * service, const char * proto, uint16_t port, mdns_txt_item_t txt[], size_t num_items)
{
    if (!_mdns_server || FUNC5(service) || FUNC5(proto) || !port) {
        return ESP_ERR_INVALID_ARG;
    }

    if (!FUNC1()) {
        return ESP_ERR_NO_MEM;
    }

    mdns_srv_item_t * item = FUNC4(service, proto);
    if (item) {
        return ESP_ERR_INVALID_ARG;
    }

    mdns_service_t * s = FUNC2(service, proto, port, instance, num_items, txt);
    if (!s) {
        return ESP_ERR_NO_MEM;
    }

    item = (mdns_srv_item_t *)FUNC7(sizeof(mdns_srv_item_t));
    if (!item) {
        HOOK_MALLOC_FAILED;
        FUNC3(s);
        return ESP_ERR_NO_MEM;
    }

    item->service = s;
    item->next = NULL;

    mdns_action_t * action = (mdns_action_t *)FUNC7(sizeof(mdns_action_t));
    if (!action) {
        HOOK_MALLOC_FAILED;
        FUNC3(s);
        FUNC6(item);
        return ESP_ERR_NO_MEM;
    }
    action->type = ACTION_SERVICE_ADD;
    action->data.srv_add.service = item;
    if (FUNC10(_mdns_server->action_queue, &action, (portTickType)0) != pdPASS) {
        FUNC3(s);
        FUNC6(item);
        FUNC6(action);
        return ESP_ERR_NO_MEM;
    }

    size_t start = FUNC11();
    size_t timeout_ticks = FUNC8(MDNS_SERVICE_ADD_TIMEOUT_MS);
    while (FUNC4(service, proto) == NULL)
    {
        uint32_t expired = FUNC11() - start;
        if (expired >= timeout_ticks) {
            return ESP_FAIL; // Timeout
        }
        FUNC9(FUNC0(10 / portTICK_RATE_MS, timeout_ticks - expired));
    }

    return ESP_OK;
}