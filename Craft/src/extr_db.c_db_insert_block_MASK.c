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
 int /*<<< orphan*/  cnd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  db_enabled ; 
 int /*<<< orphan*/  mtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ring ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int,int,int,int) ; 

void FUNC4(int p, int q, int x, int y, int z, int w) {
    if (!db_enabled) {
        return;
    }
    FUNC1(&mtx);
    FUNC3(&ring, p, q, x, y, z, w);
    FUNC0(&cnd);
    FUNC2(&mtx);
}