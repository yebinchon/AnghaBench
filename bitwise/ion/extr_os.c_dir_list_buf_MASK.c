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
struct TYPE_4__ {int /*<<< orphan*/  name; scalar_t__ valid; } ;
typedef  TYPE_1__ DirListIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

const char **FUNC4(const char *filespec) {
    const char **buf = NULL;
    DirListIter iter;
    for (FUNC1(&iter, filespec); iter.valid; FUNC2(&iter)) {
        const char *name = FUNC3(iter.name);
        FUNC0(buf, name);
    }
    return buf;
}