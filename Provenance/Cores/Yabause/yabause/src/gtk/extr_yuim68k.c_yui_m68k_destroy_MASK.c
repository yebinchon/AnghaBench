#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  paused_handler; int /*<<< orphan*/  running_handler; } ;
typedef  TYPE_1__ YuiM68k ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  yui ; 
 int /*<<< orphan*/ * yui_m68k ; 

void FUNC3(YuiM68k * m68k) {
  FUNC1(yui, m68k->running_handler);
  FUNC1(yui, m68k->paused_handler);
  
  yui_m68k = NULL;

  FUNC2(FUNC0(m68k));
}