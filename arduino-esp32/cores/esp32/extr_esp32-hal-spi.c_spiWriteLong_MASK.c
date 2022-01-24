#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_13__ {TYPE_5__* dev; } ;
typedef  TYPE_6__ spi_t ;
struct TYPE_9__ {int usr; } ;
struct TYPE_8__ {scalar_t__ usr_miso_dbitlen; } ;
struct TYPE_11__ {int usr_mosi_dbitlen; } ;
struct TYPE_10__ {int /*<<< orphan*/  wr_bit_order; } ;
struct TYPE_12__ {TYPE_2__ cmd; int /*<<< orphan*/ * data_buf; TYPE_1__ miso_dlen; TYPE_4__ mosi_dlen; TYPE_3__ ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(spi_t * spi, uint32_t data)
{
    if(!spi) {
        return;
    }
    if(!spi->dev->ctrl.wr_bit_order){
        data = FUNC2(data);
    }
    FUNC0();
    spi->dev->mosi_dlen.usr_mosi_dbitlen = 31;
    spi->dev->miso_dlen.usr_miso_dbitlen = 0;
    spi->dev->data_buf[0] = data;
    spi->dev->cmd.usr = 1;
    while(spi->dev->cmd.usr);
    FUNC1();
}