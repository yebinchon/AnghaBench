#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  spics_io_num; } ;
struct TYPE_7__ {size_t id; TYPE_1__ cfg; } ;
typedef  TYPE_2__ spi_slave_t ;
struct TYPE_8__ {int /*<<< orphan*/  spics_in; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* spi_periph_signal ; 

__attribute__((used)) static inline void FUNC3(spi_slave_t *host)
{
    if (FUNC0(host)) {
        FUNC1(host->cfg.spics_io_num, spi_periph_signal[host->id].spics_in);
    } else {
        FUNC2(host->cfg.spics_io_num, spi_periph_signal[host->id].spics_in, false);
    }
}