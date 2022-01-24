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
struct TYPE_3__ {int length; scalar_t__ rx_buffer; scalar_t__ tx_buffer; } ;
typedef  TYPE_1__ spi_transaction_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 

void FUNC1(spi_transaction_t *t, int rxlength)
{
    if (t->tx_buffer) FUNC0( "master tx", t->tx_buffer, t->length/8 );
    if (t->rx_buffer) FUNC0( "master rx", t->rx_buffer, rxlength/8 );
}