#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uart_select_args_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ **,int const) ; 
 int /*<<< orphan*/  s_registered_select_lock ; 
 int s_registered_select_num ; 
 int /*<<< orphan*/ ** s_registered_selects ; 

__attribute__((used)) static esp_err_t FUNC3(uart_select_args_t *args)
{
    esp_err_t ret = ESP_ERR_INVALID_ARG;

    if (args) {
        FUNC0(&s_registered_select_lock);
        const int new_size = s_registered_select_num + 1;
        if ((s_registered_selects = FUNC2(s_registered_selects, new_size * sizeof(uart_select_args_t *))) == NULL) {
            ret = ESP_ERR_NO_MEM;
        } else {
            s_registered_selects[s_registered_select_num] = args;
            s_registered_select_num = new_size;
            ret = ESP_OK;
        }
        FUNC1(&s_registered_select_lock);
    }

    return ret;
}