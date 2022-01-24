#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
struct TYPE_10__ {int length; char* tx_buffer; } ;
typedef  TYPE_2__ spi_transaction_t ;
struct TYPE_11__ {int clock_speed_hz; int duty_cycle_pos; int spics_io_num; int queue_size; int /*<<< orphan*/  mode; int /*<<< orphan*/  dummy_bits; int /*<<< orphan*/  address_bits; int /*<<< orphan*/  command_bits; } ;
typedef  TYPE_3__ spi_device_interface_config_t ;
typedef  int /*<<< orphan*/  spi_device_handle_t ;
struct TYPE_9__ {int clkdiv_pre; int clkcnt_n; } ;
struct TYPE_12__ {TYPE_1__ clock; } ;
typedef  TYPE_4__ spi_dev_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_13__ {TYPE_4__* hw; } ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t TEST_SPI_HOST ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int,int) ; 
 scalar_t__ FUNC3 (size_t,TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_5__* spi_periph_signal ; 

__attribute__((used)) static void FUNC6(int clk, int pre, int n)
{
    esp_err_t ret;
    spi_device_handle_t handle;

    spi_device_interface_config_t devcfg={
        .command_bits=0,
        .address_bits=0,
        .dummy_bits=0,
        .clock_speed_hz=clk,
        .duty_cycle_pos=128,
        .mode=0,
        .spics_io_num=21,
        .queue_size=3
    };
    char sendbuf[16]="";
    spi_transaction_t t;
    FUNC1(&t, 0, sizeof(t));

    ret=FUNC3(TEST_SPI_HOST, &devcfg, &handle);
    FUNC0(ret==ESP_OK);

    t.length=16*8;
    t.tx_buffer=sendbuf;
    ret=FUNC5(handle, &t);

    spi_dev_t* hw = spi_periph_signal[TEST_SPI_HOST].hw;

    FUNC2("Checking clk rate %dHz. expect pre %d n %d, got pre %d n %d\n", clk, pre, n, hw->clock.clkdiv_pre+1, hw->clock.clkcnt_n+1);

    FUNC0(hw->clock.clkcnt_n+1==n);
    FUNC0(hw->clock.clkdiv_pre+1==pre);

    ret=FUNC4(handle);
    FUNC0(ret==ESP_OK);
}