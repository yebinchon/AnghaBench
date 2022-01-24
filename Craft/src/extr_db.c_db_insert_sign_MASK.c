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
 int /*<<< orphan*/  db_enabled ; 
 int /*<<< orphan*/  insert_sign_stmt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(
    int p, int q, int x, int y, int z, int face, const char *text)
{
    if (!db_enabled) {
        return;
    }
    FUNC2(insert_sign_stmt);
    FUNC0(insert_sign_stmt, 1, p);
    FUNC0(insert_sign_stmt, 2, q);
    FUNC0(insert_sign_stmt, 3, x);
    FUNC0(insert_sign_stmt, 4, y);
    FUNC0(insert_sign_stmt, 5, z);
    FUNC0(insert_sign_stmt, 6, face);
    FUNC1(insert_sign_stmt, 7, text, -1, NULL);
    FUNC3(insert_sign_stmt);
}