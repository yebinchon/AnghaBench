#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t spi_host_device_t ;
struct TYPE_2__ {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * spi_periph_claimed ; 
 TYPE_1__* spi_periph_signal ; 

bool FUNC2(spi_host_device_t host)
{
    bool true_var = true;
    bool ret = FUNC0(&spi_periph_claimed[host], &true_var, false);
    if (ret) FUNC1(spi_periph_signal[host].module);
    return ret;
}