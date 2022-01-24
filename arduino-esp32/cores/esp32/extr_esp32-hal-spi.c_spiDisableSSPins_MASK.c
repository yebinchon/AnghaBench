#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_7__ {TYPE_2__* dev; } ;
typedef  TYPE_3__ spi_t ;
struct TYPE_5__ {int val; } ;
struct TYPE_6__ {TYPE_1__ pin; } ;

/* Variables and functions */
 int SPI_CS_MASK_ALL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(spi_t * spi, uint8_t cs_mask)
{
    if(!spi) {
        return;
    }
    FUNC0();
    spi->dev->pin.val |= (cs_mask & SPI_CS_MASK_ALL);
    FUNC1();
}