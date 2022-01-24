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
typedef  int /*<<< orphan*/  Map ;

/* Variables and functions */
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  db_enabled ; 
 int /*<<< orphan*/  load_lights_stmt ; 
 int /*<<< orphan*/  load_mtx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(Map *map, int p, int q) {
    if (!db_enabled) {
        return;
    }
    FUNC1(&load_mtx);
    FUNC5(load_lights_stmt);
    FUNC3(load_lights_stmt, 1, p);
    FUNC3(load_lights_stmt, 2, q);
    while (FUNC6(load_lights_stmt) == SQLITE_ROW) {
        int x = FUNC4(load_lights_stmt, 0);
        int y = FUNC4(load_lights_stmt, 1);
        int z = FUNC4(load_lights_stmt, 2);
        int w = FUNC4(load_lights_stmt, 3);
        FUNC0(map, x, y, z, w);
    }
    FUNC2(&load_mtx);
}