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
typedef  scalar_t__ portMUX_TYPE ;
typedef  int /*<<< orphan*/  esp_pm_lock_type_t ;
struct TYPE_5__ {int arg; char const* name; scalar_t__ spinlock; int /*<<< orphan*/  mode; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ esp_pm_lock_t ;
typedef  TYPE_1__* esp_pm_lock_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next ; 
 scalar_t__ portMUX_INITIALIZER_UNLOCKED ; 
 int /*<<< orphan*/  s_list ; 
 int /*<<< orphan*/  s_list_lock ; 

esp_err_t FUNC5(esp_pm_lock_type_t lock_type, int arg,
        const char* name, esp_pm_lock_handle_t* out_handle)
{
#ifndef CONFIG_PM_ENABLE
    return ESP_ERR_NOT_SUPPORTED;
#endif

    if (out_handle == NULL) {
        return ESP_ERR_INVALID_ARG;
    }
    esp_pm_lock_t* new_lock = (esp_pm_lock_t*) FUNC3(1, sizeof(*new_lock));
    if (!new_lock) {
        return ESP_ERR_NO_MEM;
    }
    new_lock->type = lock_type;
    new_lock->arg = arg;
    new_lock->mode = FUNC4(lock_type, arg);
    new_lock->name = name;
    new_lock->spinlock = (portMUX_TYPE) portMUX_INITIALIZER_UNLOCKED;
    *out_handle = new_lock;

    FUNC1(&s_list_lock);
    FUNC0(&s_list, new_lock, next);
    FUNC2(&s_list_lock);
    return ESP_OK;
}