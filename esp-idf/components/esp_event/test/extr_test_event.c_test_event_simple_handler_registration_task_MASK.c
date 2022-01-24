#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  done; int /*<<< orphan*/  start; scalar_t__ data; } ;
typedef  TYPE_1__ task_arg_t ;
struct TYPE_4__ {int num; int /*<<< orphan*/ * handles; int /*<<< orphan*/  id; int /*<<< orphan*/  base; int /*<<< orphan*/  loop; scalar_t__ is_registration; } ;
typedef  TYPE_2__ handler_registration_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void* args)
{
    task_arg_t* arg = (task_arg_t*) args;
    handler_registration_data_t* data = (handler_registration_data_t*) arg->data;

    FUNC6(arg->start, portMAX_DELAY);

    for(int i = 0; i < data->num; i++) {
        if (data->is_registration) {
            FUNC0(ESP_OK, FUNC1(data->loop, data->base, data->id, data->handles[i], NULL));
        } else {
            FUNC0(ESP_OK, FUNC2(data->loop, data->base, data->id, data->handles[i]));
        }
        FUNC3(1);
    }

    FUNC5(arg->done);

    FUNC4(NULL);
}