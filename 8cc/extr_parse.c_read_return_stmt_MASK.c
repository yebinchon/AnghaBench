#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  rettype; } ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current_func_type ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/ * FUNC3 () ; 

__attribute__((used)) static Node *FUNC4() {
    Node *retval = FUNC3();
    FUNC2(';');
    if (retval)
        return FUNC1(FUNC0(current_func_type->rettype, retval));
    return FUNC1(NULL);
}