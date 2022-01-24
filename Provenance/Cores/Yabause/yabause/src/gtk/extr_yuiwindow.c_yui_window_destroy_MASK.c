#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int gint ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  inifile ; 
 int /*<<< orphan*/  keyfile ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static void FUNC7(GtkWidget * window) {
	gint x, y;
	char buffer[512];

	FUNC5(FUNC0(window), &x, &y);

	FUNC6(buffer, "%d", x);
	FUNC2(keyfile, "Gtk", "X", buffer);
	FUNC6(buffer, "%d", y);
	FUNC2(keyfile, "Gtk", "Y", buffer);

	FUNC1(inifile, FUNC3(keyfile, 0, 0), -1, 0);
	FUNC4();
}