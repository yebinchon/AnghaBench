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
struct TYPE_3__ {int flags; int length; int /*<<< orphan*/  tx_data; } ;
typedef  TYPE_1__ spi_transaction_t ;

/* Variables and functions */
 int SPI_TRANS_USE_RXDATA ; 
 int SPI_TRANS_USE_TXDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(int slot)
{
    spi_transaction_t t = {
        .flags = SPI_TRANS_USE_RXDATA | SPI_TRANS_USE_TXDATA,
        .length = 8,
        .tx_data = 0xff
    };
    FUNC0(FUNC1(slot), &t);
    // don't care if this failed
}