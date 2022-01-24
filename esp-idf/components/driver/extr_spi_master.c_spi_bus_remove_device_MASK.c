#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* spi_device_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_7__ {int spics_io_num; } ;
struct TYPE_9__ {TYPE_2__* host; int /*<<< orphan*/  semphr_polling; int /*<<< orphan*/  ret_queue; int /*<<< orphan*/  trans_queue; TYPE_1__ cfg; } ;
struct TYPE_8__ {int cur_cs; int prev_cs; int /*<<< orphan*/ * device; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_OK ; 
 int NO_CS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

esp_err_t FUNC8(spi_device_handle_t handle)
{
    int x;
    FUNC0(handle!=NULL, "invalid handle", ESP_ERR_INVALID_ARG);
    //These checks aren't exhaustive; another thread could sneak in a transaction inbetween. These are only here to
    //catch design errors and aren't meant to be triggered during normal operation.
    FUNC0(FUNC5(handle->trans_queue)==0, "Have unfinished transactions", ESP_ERR_INVALID_STATE);
    FUNC0(handle->host->cur_cs == NO_CS || FUNC1(&handle->host->device[handle->host->cur_cs])!=handle, "Have unfinished transactions", ESP_ERR_INVALID_STATE);
    FUNC0(FUNC5(handle->ret_queue)==0, "Have unfinished transactions", ESP_ERR_INVALID_STATE);

    //return
    int spics_io_num = handle->cfg.spics_io_num;
    if (spics_io_num >= 0) FUNC4(spics_io_num);

    //Kill queues
    FUNC6(handle->trans_queue);
    FUNC6(handle->ret_queue);
    FUNC7(handle->semphr_polling);
    //Remove device from list of csses and free memory
    for (x=0; x<NO_CS; x++) {
        if (FUNC1(&handle->host->device[x]) == handle){
            FUNC2(&handle->host->device[x], NULL);
            if (x == handle->host->prev_cs) handle->host->prev_cs = NO_CS;
        }
    }
    FUNC3(handle);
    return ESP_OK;
}