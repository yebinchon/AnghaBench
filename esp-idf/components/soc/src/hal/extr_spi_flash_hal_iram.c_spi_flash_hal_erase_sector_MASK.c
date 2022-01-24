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
typedef  int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* poll_cmd_done ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ spi_flash_host_driver_t ;
typedef  int /*<<< orphan*/  spi_dev_t ;

/* Variables and functions */
 int ADDRESS_MASK_24BIT ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(spi_flash_host_driver_t *host, uint32_t start_address)
{
    spi_dev_t *dev = FUNC0(host);
    FUNC2(dev, 24);
    FUNC3(dev, start_address & ADDRESS_MASK_24BIT);
    FUNC1(dev);
    host->poll_cmd_done(host);
}