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
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_4__ {int cursor; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  texture; int /*<<< orphan*/  buffer; int /*<<< orphan*/  image; } ;
typedef  TYPE_1__ YuiVdp1 ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkTreePath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(GtkWidget * view, YuiVdp1 * vdp1) {
	GtkTreePath * path;
	gchar * strpath;
	int i;

	FUNC9(FUNC0(view), &path, NULL);

	if (path) {
		gchar nameTemp[1024];

		FUNC12(FUNC3(vdp1->image));

		strpath = FUNC8(path);

		FUNC10(strpath, "%i", &i);

		vdp1->cursor = i;

		FUNC1(i, nameTemp);
		FUNC6(vdp1->buffer, FUNC5(nameTemp), -1);
		vdp1->texture = FUNC2(i, &vdp1->w, &vdp1->h);
		FUNC11(vdp1);

		FUNC4(strpath);
		FUNC7(path);
	}
}