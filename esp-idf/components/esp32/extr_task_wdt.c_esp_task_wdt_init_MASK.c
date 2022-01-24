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
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  twdt_config_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_3__ {int timeout; int panic; int /*<<< orphan*/  intr_handle; int /*<<< orphan*/ * list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  ETS_TG0_WDT_LEVEL_INTR_SOURCE ; 
 int /*<<< orphan*/  PERIPH_TIMG0_MODULE ; 
 int TG0_WDT_TICK_US ; 
 int /*<<< orphan*/  TIMERG0 ; 
 int /*<<< orphan*/  TIMER_WDT_INT ; 
 int /*<<< orphan*/  TIMER_WDT_RESET_SYSTEM ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  task_wdt_isr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* twdt_config ; 
 int /*<<< orphan*/  twdt_spinlock ; 

esp_err_t FUNC14(uint32_t timeout, bool panic)
{
    FUNC5(&twdt_spinlock);
    if(twdt_config == NULL){        //TWDT not initialized yet
        //Allocate memory for wdt_config
        twdt_config = FUNC2(1, sizeof(twdt_config_t));
        FUNC0((twdt_config != NULL), ESP_ERR_NO_MEM);

        twdt_config->list = NULL;
        twdt_config->timeout = timeout;
        twdt_config->panic = panic;

        //Register Interrupt and ISR
        FUNC1(FUNC3(ETS_TG0_WDT_LEVEL_INTR_SOURCE, 0, task_wdt_isr, NULL, &twdt_config->intr_handle));

        //Configure hardware timer
        FUNC4(PERIPH_TIMG0_MODULE);
        FUNC10(&TIMERG0, false);               //Disable write protection
        FUNC8(&TIMERG0);
        FUNC11(&TIMERG0, TG0_WDT_TICK_US); //Prescaler: wdt counts in ticks of TG0_WDT_TICK_US
        //1st stage timeout: interrupt
        FUNC13(&TIMERG0, 0, TIMER_WDT_INT);
        FUNC12(&TIMERG0, 0, twdt_config->timeout*1000*1000/TG0_WDT_TICK_US);
        //2nd stage timeout: reset system
        FUNC13(&TIMERG0, 1, TIMER_WDT_RESET_SYSTEM);
        FUNC12(&TIMERG0, 1, 2*twdt_config->timeout*1000*1000/TG0_WDT_TICK_US);
        FUNC9(&TIMERG0, true);
        FUNC7(&TIMERG0);
        FUNC10(&TIMERG0, true);                         //Enable write protection
    } else {      //twdt_config previously initialized
        //Reconfigure task wdt
        twdt_config->panic = panic;
        twdt_config->timeout = timeout;

        //Reconfigure hardware timer
        FUNC10(&TIMERG0, false);   //Disable write protection
        FUNC9(&TIMERG0, false);                   //Disable timer
        //Set timeout before interrupt
        FUNC12(&TIMERG0, 0, twdt_config->timeout*1000*1000/TG0_WDT_TICK_US);
        //Set timeout before reset
        FUNC12(&TIMERG0, 1, 2*twdt_config->timeout*1000*1000/TG0_WDT_TICK_US);
        FUNC9(&TIMERG0, true);                   //Renable timer
        FUNC7(&TIMERG0);                         //Reset timer
        FUNC10(&TIMERG0, true);                     //Enable write protection
    }
    FUNC6(&twdt_spinlock);
    return ESP_OK;
}