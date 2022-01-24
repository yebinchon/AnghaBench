#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  t ;
struct TYPE_4__ {int length; scalar_t__ rx_data; void* user; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ spi_transaction_t ;
typedef  int /*<<< orphan*/  spi_device_handle_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  SPI_TRANS_USE_RXDATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

uint32_t FUNC4(spi_device_handle_t spi)
{
    //get_id cmd
    FUNC1(spi, 0x04);

    spi_transaction_t t;
    FUNC2(&t, 0, sizeof(t));
    t.length=8*3;
    t.flags = SPI_TRANS_USE_RXDATA;
    t.user = (void*)1;

    esp_err_t ret = FUNC3(spi, &t);
    FUNC0( ret == ESP_OK );

    return *(uint32_t*)t.rx_data;
}