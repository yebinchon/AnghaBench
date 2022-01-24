#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int id; TYPE_1__* host; } ;
typedef  TYPE_2__ spi_device_t ;
struct TYPE_4__ {int /*<<< orphan*/  intr; int /*<<< orphan*/  acquire_cs; } ;

/* Variables and functions */
 int NO_CS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(spi_device_t *dev)
{
    int acquire_cs = FUNC0(&dev->host->acquire_cs);
    if (acquire_cs == dev->id || acquire_cs == NO_CS) {
        FUNC1(dev->host->intr);
    }
    //otherwise wait for bus release to invoke
}