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
typedef  int /*<<< orphan*/ * gpointer ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkTreePath ;
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PERMOUSE ; 
 int /*<<< orphan*/  PERPAD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  keyfile ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int*) ; 

__attribute__((used)) static void FUNC13(GtkWidget * widget, gpointer data) {
	GtkTreePath * path;
	gchar * strpath;
	int i;
	GtkWidget * box = data;
	GList * children;
	GtkWidget * child;

	children = FUNC5(FUNC0(box));
	for(i = 1;i < 4;i++) {
		child = FUNC4(children, i);
		if (child != NULL) FUNC9(child);
	}

	FUNC8(FUNC1(widget), &path, NULL);

	if (path) {
		int i;

		strpath = FUNC7(path);
		FUNC12(strpath, "%d", &i);

		switch(i) {
			case 0:
				FUNC3(keyfile, "General", "PerType", PERPAD);
				FUNC11(box);
				break;
			case 1:
				FUNC3(keyfile, "General", "PerType", PERMOUSE);
				FUNC10(box);
				break;
		}

		FUNC2(strpath);
		FUNC6(path);
	}
}