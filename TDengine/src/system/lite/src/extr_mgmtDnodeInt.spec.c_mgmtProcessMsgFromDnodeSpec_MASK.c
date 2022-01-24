#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* msg; } ;
typedef  TYPE_1__ SSchedMsg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * taosMsg ; 

void FUNC4(SSchedMsg *sched) {
  char  msgType = *sched->msg;
  char *content = sched->msg + 1;
  FUNC1("msg:%s is received from dnode", taosMsg[msgType]);

  FUNC3(content, 0, msgType, FUNC2(0));
  FUNC0(sched->msg);
}