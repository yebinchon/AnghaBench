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
typedef  int /*<<< orphan*/  Vector ;
typedef  int /*<<< orphan*/  Dict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int*,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Dict *FUNC5(int *rsize, int *align, bool is_struct) {
    if (!FUNC1('{'))
        return NULL;
    Vector *fields = FUNC2();
    FUNC0(fields);
    if (is_struct)
        return FUNC3(rsize, align, fields);
    return FUNC4(rsize, align, fields);
}