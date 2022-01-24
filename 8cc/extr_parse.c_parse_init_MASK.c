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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  type_int ; 
 int /*<<< orphan*/  type_void ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5() {
    Vector *voidptr = FUNC3(FUNC1(type_void));
    Vector *two_voidptrs = FUNC2();
    FUNC4(two_voidptrs, FUNC1(type_void));
    FUNC4(two_voidptrs, FUNC1(type_void));
    FUNC0("__builtin_return_address", FUNC1(type_void), voidptr);
    FUNC0("__builtin_reg_class", type_int, voidptr);
    FUNC0("__builtin_va_arg", type_void, two_voidptrs);
    FUNC0("__builtin_va_start", type_void, voidptr);
}