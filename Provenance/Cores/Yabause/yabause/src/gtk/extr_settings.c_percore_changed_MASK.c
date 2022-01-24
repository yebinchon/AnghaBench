#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gpointer ;
struct TYPE_8__ {char* value; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  TYPE_1__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__* percores ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(GtkWidget * widget, gpointer data) {
	const char * core_s = percores[FUNC4(FUNC0(widget))].value;
	GList * entrylist = data;
	int core;
	FUNC5(core_s, "%d", &core);

	FUNC1();
	FUNC2(core);

	while(entrylist) {
		FUNC6(entrylist->data);
		entrylist = FUNC3(entrylist);
	}
}