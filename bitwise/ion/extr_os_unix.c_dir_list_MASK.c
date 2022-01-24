#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int valid; int error; int /*<<< orphan*/  base; int /*<<< orphan*/ * handle; } ;
typedef  TYPE_1__ DirListIter ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 

void FUNC4(DirListIter *iter, const char *path) {
    FUNC1(iter, 0, sizeof(*iter));
    DIR *dir = FUNC2(path);
    if (!dir) {
        iter->valid = false;
        iter->error = true;
        return;
    }
    iter->handle = dir;
    FUNC3(iter->base, path);
    iter->valid = true;
    FUNC0(iter);
}