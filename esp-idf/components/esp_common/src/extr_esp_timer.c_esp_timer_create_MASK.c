#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* esp_timer_handle_t ;
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  arg; int /*<<< orphan*/ * callback; } ;
typedef  TYPE_2__ esp_timer_create_args_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  arg; int /*<<< orphan*/ * callback; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

esp_err_t FUNC3(const esp_timer_create_args_t* args,
                           esp_timer_handle_t* out_handle)
{
    if (!FUNC1()) {
        return ESP_ERR_INVALID_STATE;
    }
    if (args == NULL || args->callback == NULL || out_handle == NULL) {
        return ESP_ERR_INVALID_ARG;
    }
    esp_timer_handle_t result = (esp_timer_handle_t) FUNC0(1, sizeof(*result));
    if (result == NULL) {
        return ESP_ERR_NO_MEM;
    }
    result->callback = args->callback;
    result->arg = args->arg;
#if WITH_PROFILING
    result->name = args->name;
    timer_insert_inactive(result);
#endif
    *out_handle = result;
    return ESP_OK;
}