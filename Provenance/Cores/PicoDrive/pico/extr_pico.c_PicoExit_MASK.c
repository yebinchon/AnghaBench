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
struct TYPE_2__ {scalar_t__ end; scalar_t__ start; scalar_t__ size; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int PAHW_MCD ; 
 int PicoAHW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ SRam ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
  if (PicoAHW & PAHW_MCD)
    FUNC1();
  FUNC0();
  FUNC4();

    if (SRam.data != NULL) {
        FUNC2(SRam.data);
        SRam.data = NULL;
        SRam.size = 0;
        SRam.start = SRam.end = 0;
    }
  FUNC3();
}