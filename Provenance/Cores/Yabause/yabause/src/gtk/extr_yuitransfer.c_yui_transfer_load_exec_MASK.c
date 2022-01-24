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
struct TYPE_4__ {int /*<<< orphan*/  to_entry; int /*<<< orphan*/  to_label; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ YuiTransfer ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  YUI_TRANSFER_LOAD_EXEC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(GtkWidget * entry, YuiTransfer * yt) {
	if (FUNC2(FUNC0(entry))) {
		yt->mode = YUI_TRANSFER_LOAD_EXEC;
		FUNC3(FUNC1(yt->to_label), FALSE);
		FUNC3(FUNC1(yt->to_entry), FALSE);
		FUNC4(yt);
	}
}