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
struct TYPE_4__ {scalar_t__ bMaster; int /*<<< orphan*/  paused_handler; int /*<<< orphan*/  running_handler; } ;
typedef  TYPE_1__ YuiSh ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  yui ; 
 int /*<<< orphan*/ * yui_msh ; 
 int /*<<< orphan*/ * yui_ssh ; 

void FUNC3(YuiSh * sh) {
  FUNC1(yui, sh->running_handler);
  FUNC1(yui, sh->paused_handler);
  
  if ( sh->bMaster ) yui_msh = NULL;
  else yui_ssh = NULL;

  FUNC2(FUNC0(sh));
}