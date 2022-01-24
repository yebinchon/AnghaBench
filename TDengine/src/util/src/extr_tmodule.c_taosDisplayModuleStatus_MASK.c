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
struct TYPE_2__ {char* name; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 TYPE_1__* moduleObj ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

char *FUNC3(int moduleNum) {
  static char status[256];
  int         i;

  status[0] = 0;

  for (i = 1; i < moduleNum; ++i)
    if (FUNC2(moduleObj[i].thread)) FUNC0(status + FUNC1(status), "%s ", moduleObj[i].name);

  if (status[0] == 0)
    FUNC0(status, "all module is down");
  else
    FUNC0(status, " is(are) up");

  return status;
}