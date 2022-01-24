#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_3__ {int /*<<< orphan*/  intr_handle; int /*<<< orphan*/ * list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_ERR_NOT_FOUND ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TIMERG0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* twdt_config ; 
 int /*<<< orphan*/  twdt_spinlock ; 

esp_err_t FUNC8(void)
{
    FUNC4(&twdt_spinlock);
    //TWDT must already be initialized
    FUNC0((twdt_config != NULL), ESP_ERR_NOT_FOUND);
    //Task list must be empty
    FUNC0((twdt_config->list == NULL), ESP_ERR_INVALID_STATE);

    //Disable hardware timer
    FUNC7(&TIMERG0, false);   //Disable write protection
    FUNC6(&TIMERG0, false);                   //Disable timer
    FUNC7(&TIMERG0, true);                     //Enable write protection

    FUNC1(FUNC2(twdt_config->intr_handle));  //Unregister interrupt
    FUNC3(twdt_config);                      //Free twdt_config
    twdt_config = NULL;
    FUNC5(&twdt_spinlock);
    return ESP_OK;
}