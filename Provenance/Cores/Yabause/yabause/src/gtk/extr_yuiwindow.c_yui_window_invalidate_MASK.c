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
struct TYPE_4__ {int state; } ;
typedef  TYPE_1__ YuiWindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int YUI_IS_RUNNING ; 
 size_t YUI_WINDOW_PAUSED_SIGNAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * yui_window_signals ; 

void FUNC2(YuiWindow * yui) {

  /* Emit a pause signal while already in pause means refresh all debug views */

  if ( !(yui->state & YUI_IS_RUNNING ))
    FUNC1(FUNC0(yui), yui_window_signals[YUI_WINDOW_PAUSED_SIGNAL], 0);
}