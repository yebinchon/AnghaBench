#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  portTickType ;
typedef  int /*<<< orphan*/  mdns_txt_linked_item_t ;
typedef  int /*<<< orphan*/  mdns_txt_item_t ;
typedef  int /*<<< orphan*/  mdns_srv_item_t ;
struct TYPE_7__ {int /*<<< orphan*/ * txt; int /*<<< orphan*/ * service; } ;
struct TYPE_8__ {TYPE_1__ srv_txt_replace; } ;
struct TYPE_9__ {TYPE_2__ data; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ mdns_action_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_10__ {int /*<<< orphan*/  action_queue; int /*<<< orphan*/  services; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_SERVICE_TXT_REPLACE ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_NOT_FOUND ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  HOOK_MALLOC_FAILED ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const*) ; 
 TYPE_6__* _mdns_server ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ pdPASS ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ ) ; 

esp_err_t FUNC7(const char * service, const char * proto, mdns_txt_item_t txt[], uint8_t num_items)
{
    if (!_mdns_server || !_mdns_server->services || FUNC3(service) || FUNC3(proto) || (num_items && txt == NULL)) {
        return ESP_ERR_INVALID_ARG;
    }
    mdns_srv_item_t * s = FUNC2(service, proto);
    if (!s) {
        return ESP_ERR_NOT_FOUND;
    }

    mdns_txt_linked_item_t * new_txt = NULL;
    if (num_items){
        new_txt = FUNC0(num_items, txt);
        if (!new_txt) {
            return ESP_ERR_NO_MEM;
        }
    }

    mdns_action_t * action = (mdns_action_t *)FUNC5(sizeof(mdns_action_t));
    if (!action) {
        HOOK_MALLOC_FAILED;
        FUNC1(new_txt);
        return ESP_ERR_NO_MEM;
    }
    action->type = ACTION_SERVICE_TXT_REPLACE;
    action->data.srv_txt_replace.service = s;
    action->data.srv_txt_replace.txt = new_txt;

    if (FUNC6(_mdns_server->action_queue, &action, (portTickType)0) != pdPASS) {
        FUNC1(new_txt);
        FUNC4(action);
        return ESP_ERR_NO_MEM;
    }
    return ESP_OK;
}