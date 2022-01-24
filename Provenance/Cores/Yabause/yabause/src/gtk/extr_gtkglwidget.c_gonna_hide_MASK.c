#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gpointer ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_6__ {int /*<<< orphan*/  window; } ;
struct TYPE_5__ {int member_1; int member_2; int member_3; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  GdkPixmap ;
typedef  int /*<<< orphan*/  GdkCursor ;
typedef  TYPE_1__ GdkColor ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ beforehiding ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static gboolean FUNC5(gpointer data) {
	beforehiding--;

	if (beforehiding == 0) {
		static char source_data[] = { 0 };
		static char mask_data[] = { 0 };

		GdkCursor *cursor;
 		GdkPixmap *source, *mask;
		GdkColor fg = { 0, 65535, 65535, 65535 };
		GdkColor bg = { 0, 0, 0, 0 };
 
		source = FUNC1(NULL, source_data, 1, 1);
		mask = FUNC1(NULL, mask_data, 1, 1);
		cursor = FUNC2(source, mask, &fg, &bg, 1, 1);
		FUNC3(source);
		FUNC3(mask);

		FUNC4(FUNC0(data)->window, cursor);

		return FALSE;
	} else {
		return TRUE;
	}
}