#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_9__* dev; } ;
typedef  TYPE_10__ spi_t ;
struct TYPE_21__ {scalar_t__ val; } ;
struct TYPE_20__ {scalar_t__ val; } ;
struct TYPE_19__ {scalar_t__ val; } ;
struct TYPE_18__ {scalar_t__ val; } ;
struct TYPE_17__ {scalar_t__ val; } ;
struct TYPE_16__ {scalar_t__ val; } ;
struct TYPE_15__ {scalar_t__ val; } ;
struct TYPE_14__ {scalar_t__ slave_mode; scalar_t__ trans_done; } ;
struct TYPE_22__ {TYPE_8__ clock; TYPE_7__ ctrl2; TYPE_6__ ctrl1; TYPE_5__ ctrl; TYPE_4__ user1; TYPE_3__ user; TYPE_2__ pin; TYPE_1__ slave; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  _on_apb_change ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*,int /*<<< orphan*/ ) ; 

void FUNC3(spi_t * spi)
{
    if(!spi) {
        return;
    }
    FUNC0();
    spi->dev->slave.trans_done = 0;
    spi->dev->slave.slave_mode = 0;
    spi->dev->pin.val = 0;
    spi->dev->user.val = 0;
    spi->dev->user1.val = 0;
    spi->dev->ctrl.val = 0;
    spi->dev->ctrl1.val = 0;
    spi->dev->ctrl2.val = 0;
    spi->dev->clock.val = 0;
    FUNC1();
    FUNC2(spi, _on_apb_change);
}