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
struct TYPE_3__ {int /*<<< orphan*/  done; int /*<<< orphan*/  start; TYPE_2__* data; } ;
typedef  TYPE_1__ task_arg_t ;
struct TYPE_4__ {int num; int /*<<< orphan*/  id; int /*<<< orphan*/  base; int /*<<< orphan*/  loop; } ;
typedef  TYPE_2__ post_event_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void* args)
{
    task_arg_t* arg = (task_arg_t*) args;
    post_event_data_t* data = arg->data;

    FUNC5(arg->start, portMAX_DELAY);

    for (int i = 0; i < data->num; i++) {
        FUNC0(ESP_OK, FUNC1(data->loop, data->base, data->id, NULL, 0, portMAX_DELAY));
        FUNC2(1);
    }

    FUNC4(arg->done);

    FUNC3(NULL);
}