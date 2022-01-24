#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gpointer ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_7__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  (* KeyName ) (int /*<<< orphan*/ ,char*,int) ;scalar_t__ canScan; } ;
struct TYPE_6__ {char* group; int /*<<< orphan*/  keyfile; } ;
struct TYPE_5__ {int /*<<< orphan*/  keyval; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  TYPE_1__ GdkEventKey ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__* PERCore ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

gboolean FUNC7(GtkWidget * widget, GdkEventKey * event, gpointer name) {
	char tmp[100];

	if (PERCore->canScan) return FALSE;

	PERCore->KeyName(event->keyval, tmp, 100);
	FUNC3(FUNC0(widget), tmp);
	FUNC5(tmp, "%s.%s.1", FUNC1(FUNC4(widget))->group, (char *)name);
	FUNC2(FUNC1(FUNC4(widget))->keyfile,
		PERCore->Name, tmp, event->keyval);

	return TRUE;
}