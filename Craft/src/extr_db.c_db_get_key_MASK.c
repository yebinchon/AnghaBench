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

/* Variables and functions */
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  db_enabled ; 
 int /*<<< orphan*/  get_key_stmt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(int p, int q) {
    if (!db_enabled) {
        return 0;
    }
    FUNC2(get_key_stmt);
    FUNC0(get_key_stmt, 1, p);
    FUNC0(get_key_stmt, 2, q);
    if (FUNC3(get_key_stmt) == SQLITE_ROW) {
        return FUNC1(get_key_stmt, 0);
    }
    return 0;
}