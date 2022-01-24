#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int address; int /*<<< orphan*/  quickCombo; int /*<<< orphan*/  store; } ;
typedef  TYPE_1__ YuiMem ;
typedef  int /*<<< orphan*/  GtkTreeIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 

__attribute__((used)) static void FUNC10(YuiMem * ym) {
	int i, j;
	GtkTreeIter iter;
	char address[10];
	char dump[30];

	FUNC7(ym->store);

	for(i = 0;i < 6;i++) {
		FUNC9(address, "%08x", ym->address + (8 * i));
		for(j = 0;j < 8;j++) {
			FUNC9(dump + (j * 3), "%02x ", FUNC3(ym->address + (8 * i) + j));
		}

		FUNC6(ym->store, &iter);
		FUNC8(FUNC2(ym->store ), &iter, 0, address, 1, dump, -1);
	}

	FUNC9( address, "%08X", ym->address );
	FUNC5( FUNC1(FUNC4(FUNC0(ym->quickCombo))), address );
}