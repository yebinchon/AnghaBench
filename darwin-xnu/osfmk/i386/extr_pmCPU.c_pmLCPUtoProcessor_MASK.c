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
typedef  int /*<<< orphan*/  processor_t ;
struct TYPE_2__ {int /*<<< orphan*/  cpu_processor; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 

processor_t
FUNC1(int lcpu)
{
    return(FUNC0(lcpu)->cpu_processor);
}