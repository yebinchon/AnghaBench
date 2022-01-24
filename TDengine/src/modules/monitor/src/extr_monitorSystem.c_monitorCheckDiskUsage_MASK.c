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
struct TYPE_2__ {int /*<<< orphan*/  diskTimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_INTERVAL ; 
 TYPE_1__* monitor ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void (*) (void*,void*),int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tscTmr ; 

void FUNC2(void *para, void *unused) {
  FUNC0();
  FUNC1(monitorCheckDiskUsage, CHECK_INTERVAL, NULL, tscTmr, &monitor->diskTimer);
}