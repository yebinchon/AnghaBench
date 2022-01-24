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
struct TYPE_6__ {scalar_t__ stack_size; } ;
typedef  TYPE_1__ esp_pthread_cfg_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 scalar_t__ PTHREAD_STACK_MIN ; 
 TYPE_1__* FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  s_pthread_cfg_key ; 

esp_err_t FUNC3(const esp_pthread_cfg_t *cfg)
{
    if (cfg->stack_size < PTHREAD_STACK_MIN) {
        return ESP_ERR_INVALID_ARG;
    }

    /* If a value is already set, update that value */
    esp_pthread_cfg_t *p = FUNC1(s_pthread_cfg_key);
    if (!p) {
        p = FUNC0(sizeof(esp_pthread_cfg_t));
        if (!p) {
            return ESP_ERR_NO_MEM;
        }
    }
    *p = *cfg;
    FUNC2(s_pthread_cfg_key, p);
    return 0;
}