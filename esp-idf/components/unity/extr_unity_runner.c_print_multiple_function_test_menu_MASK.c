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
struct TYPE_3__ {char* name; int test_fn_count; char** test_fn_name; } ;
typedef  TYPE_1__ test_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(const test_desc_t *test_ms)
{
    FUNC2(test_ms->name);
    FUNC0();
    for (int i = 0; i < test_ms->test_fn_count; i++) {
        FUNC1();
        FUNC2("(");
        FUNC3(i + 1);
        FUNC2(")");
        FUNC1();
        FUNC2("\"");
        FUNC2(test_ms->test_fn_name[i]);
        FUNC2("\"");
        FUNC0();
    }
}