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
typedef  int /*<<< orphan*/  SignList ;

/* Variables and functions */
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  db_enabled ; 
 int /*<<< orphan*/  load_signs_stmt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(SignList *list, int p, int q) {
    if (!db_enabled) {
        return;
    }
    FUNC4(load_signs_stmt);
    FUNC1(load_signs_stmt, 1, p);
    FUNC1(load_signs_stmt, 2, q);
    while (FUNC5(load_signs_stmt) == SQLITE_ROW) {
        int x = FUNC2(load_signs_stmt, 0);
        int y = FUNC2(load_signs_stmt, 1);
        int z = FUNC2(load_signs_stmt, 2);
        int face = FUNC2(load_signs_stmt, 3);
        const char *text = (const char *)FUNC3(
            load_signs_stmt, 4);
        FUNC0(list, x, y, z, face, text);
    }
}