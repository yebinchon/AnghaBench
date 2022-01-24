#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ sdio_ioready1; } ;
struct TYPE_4__ {TYPE_1__ cfg_data1; } ;

/* Variables and functions */
 TYPE_2__ HINF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(void)
{
    HINF.cfg_data1.sdio_ioready1 = 0;   //set IO ready to 1 to stop host from using
    FUNC1();
    FUNC0();
}