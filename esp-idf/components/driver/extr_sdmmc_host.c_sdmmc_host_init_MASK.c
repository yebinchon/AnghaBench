#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sdmmc_event_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_9__ {scalar_t__ busy_clr_int_en; } ;
struct TYPE_8__ {int int_enable; } ;
struct TYPE_7__ {int val; } ;
struct TYPE_6__ {int val; } ;
struct TYPE_10__ {TYPE_4__ cardthrctl; TYPE_3__ ctrl; TYPE_2__ intmask; TYPE_1__ rintsts; int /*<<< orphan*/  hcon; int /*<<< orphan*/  verid; } ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  ETS_SDIO_HOST_INTR_SOURCE ; 
 int /*<<< orphan*/  PERIPH_SDMMC_MODULE ; 
 TYPE_5__ SDMMC ; 
 int /*<<< orphan*/  SDMMC_EVENT_QUEUE_LENGTH ; 
 int SDMMC_INTMASK_CD ; 
 int SDMMC_INTMASK_CMD_DONE ; 
 int SDMMC_INTMASK_DATA_OVER ; 
 int SDMMC_INTMASK_DCRC ; 
 int SDMMC_INTMASK_DTO ; 
 int SDMMC_INTMASK_EBE ; 
 int SDMMC_INTMASK_HLE ; 
 int SDMMC_INTMASK_HTO ; 
 int SDMMC_INTMASK_RCRC ; 
 int SDMMC_INTMASK_RESP_ERR ; 
 int SDMMC_INTMASK_RTO ; 
 int SDMMC_INTMASK_SBE ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * s_event_queue ; 
 int /*<<< orphan*/ * s_intr_handle ; 
 int /*<<< orphan*/ * s_io_intr_event ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  sdmmc_isr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC12 () ; 

esp_err_t FUNC13(void)
{
    if (s_intr_handle) {
        return ESP_ERR_INVALID_STATE;
    }

    FUNC4(PERIPH_SDMMC_MODULE);
    FUNC3(PERIPH_SDMMC_MODULE);

    // Enable clock to peripheral. Use smallest divider first.
    FUNC7(2);

    // Reset
    FUNC6();
    FUNC0(TAG, "peripheral version %x, hardware config %08x", SDMMC.verid, SDMMC.hcon);

    // Clear interrupt status and set interrupt mask to known state
    SDMMC.rintsts.val = 0xffffffff;
    SDMMC.intmask.val = 0;
    SDMMC.ctrl.int_enable = 0;

    // Allocate event queue
    s_event_queue = FUNC11(SDMMC_EVENT_QUEUE_LENGTH, sizeof(sdmmc_event_t));
    if (!s_event_queue) {
        return ESP_ERR_NO_MEM;
    }
    s_io_intr_event = FUNC12();
    if (!s_io_intr_event) {
        FUNC9(s_event_queue);
        s_event_queue = NULL;
        return ESP_ERR_NO_MEM;
    }
    // Attach interrupt handler
    esp_err_t ret = FUNC1(ETS_SDIO_HOST_INTR_SOURCE, 0, &sdmmc_isr, s_event_queue, &s_intr_handle);
    if (ret != ESP_OK) {
        FUNC9(s_event_queue);
        s_event_queue = NULL;
        FUNC10(s_io_intr_event);
        s_io_intr_event = NULL;
        return ret;
    }
    // Enable interrupts
    SDMMC.intmask.val =
            SDMMC_INTMASK_CD |
            SDMMC_INTMASK_CMD_DONE |
            SDMMC_INTMASK_DATA_OVER |
            SDMMC_INTMASK_RCRC | SDMMC_INTMASK_DCRC |
            SDMMC_INTMASK_RTO | SDMMC_INTMASK_DTO | SDMMC_INTMASK_HTO |
            SDMMC_INTMASK_SBE | SDMMC_INTMASK_EBE |
            SDMMC_INTMASK_RESP_ERR | SDMMC_INTMASK_HLE; //sdio is enabled only when use.
    SDMMC.ctrl.int_enable = 1;

    // Disable generation of Busy Clear Interrupt
    SDMMC.cardthrctl.busy_clr_int_en = 0;

    // Enable DMA
    FUNC5();

    // Initialize transaction handler
    ret = FUNC8();
    if (ret != ESP_OK) {
        FUNC9(s_event_queue);
        s_event_queue = NULL;
        FUNC10(s_io_intr_event);
        s_io_intr_event = NULL;
        FUNC2(s_intr_handle);
        s_intr_handle = NULL;
        return ret;
    }

    return ESP_OK;
}