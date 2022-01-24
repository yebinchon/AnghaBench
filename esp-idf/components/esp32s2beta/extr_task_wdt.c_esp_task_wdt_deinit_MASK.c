#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_5__ {scalar_t__ en; } ;
struct TYPE_7__ {scalar_t__ wdt_wprotect; TYPE_1__ wdt_config0; } ;
struct TYPE_6__ {int /*<<< orphan*/  intr_handle; int /*<<< orphan*/ * list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_ERR_NOT_FOUND ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_4__ TIMERG0 ; 
 scalar_t__ TIMG_WDT_WKEY_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* twdt_config ; 
 int /*<<< orphan*/  twdt_spinlock ; 

esp_err_t FUNC6(void)
{
    FUNC4(&twdt_spinlock);
    //TWDT must already be initialized
    FUNC0((twdt_config != NULL), ESP_ERR_NOT_FOUND);
    //Task list must be empty
    FUNC0((twdt_config->list == NULL), ESP_ERR_INVALID_STATE);

    //Disable hardware timer
    TIMERG0.wdt_wprotect=TIMG_WDT_WKEY_VALUE;   //Disable write protection
    TIMERG0.wdt_config0.en=0;                   //Disable timer
    TIMERG0.wdt_wprotect=0;                     //Enable write protection

    FUNC1(FUNC2(twdt_config->intr_handle));  //Unregister interrupt
    FUNC3(twdt_config);                      //Free twdt_config
    twdt_config = NULL;
    FUNC5(&twdt_spinlock);
    return ESP_OK;
}