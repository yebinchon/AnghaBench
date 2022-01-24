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
typedef  TYPE_1__* rcc_item_ty ;
typedef  int /*<<< orphan*/  list_ty ;
struct TYPE_4__ {int uid; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void FUNC4(list_ty x) {
	int count = FUNC1(x);

	if (count == 0)
		FUNC3("<em>empty item list</em>\n");
	else {
		int i;
		FUNC3("<em>item list</em>");
		FUNC3("<ol>\n");
		for (i = 0; i < count; i++) {
			rcc_item_ty item = FUNC0(x, i);
			FUNC3("<li value=%d>", item->uid);
			FUNC2(item);
			FUNC3("</li>\n");
		}
		FUNC3("</ol>\n");
	}
}