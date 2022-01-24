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
typedef  int /*<<< orphan*/  portTickType ;
typedef  int /*<<< orphan*/  mdns_srv_item_t ;
struct TYPE_7__ {TYPE_3__* value; TYPE_3__* key; int /*<<< orphan*/ * service; } ;
struct TYPE_8__ {TYPE_1__ srv_txt_set; } ;
struct TYPE_9__ {TYPE_2__ data; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ mdns_action_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_10__ {int /*<<< orphan*/  action_queue; int /*<<< orphan*/  services; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_SERVICE_TXT_SET ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_NOT_FOUND ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  HOOK_MALLOC_FAILED ; 
 int /*<<< orphan*/ * FUNC0 (char const*,char const*) ; 
 TYPE_6__* _mdns_server ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ pdPASS ; 
 void* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ ) ; 

esp_err_t FUNC6(const char * service, const char * proto, const char * key, const char * value)
{
    if (!_mdns_server || !_mdns_server->services || FUNC1(service) || FUNC1(proto) || FUNC1(key) || !value) {
        return ESP_ERR_INVALID_ARG;
    }
    mdns_srv_item_t * s = FUNC0(service, proto);
    if (!s) {
        return ESP_ERR_NOT_FOUND;
    }
    mdns_action_t * action = (mdns_action_t *)FUNC3(sizeof(mdns_action_t));
    if (!action) {
        HOOK_MALLOC_FAILED;
        return ESP_ERR_NO_MEM;
    }

    action->type = ACTION_SERVICE_TXT_SET;
    action->data.srv_txt_set.service = s;
    action->data.srv_txt_set.key = FUNC4(key);
    if (!action->data.srv_txt_set.key) {
        FUNC2(action);
        return ESP_ERR_NO_MEM;
    }
    action->data.srv_txt_set.value = FUNC4(value);
    if (!action->data.srv_txt_set.value) {
        FUNC2(action->data.srv_txt_set.key);
        FUNC2(action);
        return ESP_ERR_NO_MEM;
    }
    if (FUNC5(_mdns_server->action_queue, &action, (portTickType)0) != pdPASS) {
        FUNC2(action->data.srv_txt_set.key);
        FUNC2(action->data.srv_txt_set.value);
        FUNC2(action);
        return ESP_ERR_NO_MEM;
    }
    return ESP_OK;
}