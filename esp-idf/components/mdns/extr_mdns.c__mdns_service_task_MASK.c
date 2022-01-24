#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ type; } ;
typedef  TYPE_1__ mdns_action_t ;
struct TYPE_6__ {scalar_t__ action_queue; } ;

/* Variables and functions */
 scalar_t__ ACTION_TASK_STOP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_3__* _mdns_server ; 
 int /*<<< orphan*/ * _mdns_service_task_handle ; 
 scalar_t__ pdTRUE ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,TYPE_1__**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *pvParameters)
{
    mdns_action_t * a = NULL;
    for (;;) {
        if (_mdns_server && _mdns_server->action_queue) {
            if (FUNC5(_mdns_server->action_queue, &a, portMAX_DELAY) == pdTRUE) {
                if (a->type == ACTION_TASK_STOP) {
                    break;
                }
                FUNC0();
                FUNC2(a);
                FUNC1();
            }
        } else {
            FUNC3(500 * portTICK_PERIOD_MS);
        }
    }
    _mdns_service_task_handle = NULL;
    FUNC4(NULL);
}