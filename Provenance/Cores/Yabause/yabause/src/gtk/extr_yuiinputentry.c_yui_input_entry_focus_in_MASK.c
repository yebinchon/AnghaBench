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
typedef  int /*<<< orphan*/  gpointer ;
typedef  scalar_t__ gboolean ;
struct TYPE_2__ {int /*<<< orphan*/  (* Flush ) () ;int /*<<< orphan*/  canScan; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GdkEventFocus ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* PERCore ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  entry_hack ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ is_watching ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  watch_joy ; 

gboolean FUNC3(GtkWidget * widget, GdkEventFocus * event, gpointer name) {
	if (! PERCore->canScan) return TRUE;

	PERCore->Flush();
	entry_hack = FUNC0(widget);

	if (!is_watching) {
		FUNC1(100, watch_joy, name);
		is_watching = TRUE;
	}

	return FALSE;
}