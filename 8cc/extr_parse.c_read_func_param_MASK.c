#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ kind; struct TYPE_9__* ptr; } ;
typedef  TYPE_1__ Type ;

/* Variables and functions */
 int /*<<< orphan*/  DECL_PARAM ; 
 int /*<<< orphan*/  DECL_PARAM_TYPEONLY ; 
 scalar_t__ KIND_ARRAY ; 
 scalar_t__ KIND_FUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (int*) ; 
 TYPE_1__* FUNC5 (char**,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* type_int ; 

__attribute__((used)) static Type *FUNC7(char **name, bool optional) {
    int sclass = 0;
    Type *basety = type_int;
    if (FUNC1(FUNC3())) {
        basety = FUNC4(&sclass);
    } else if (optional) {
        FUNC0(FUNC3(), "type expected, but got %s", FUNC6(FUNC3()));
    }
    Type *ty = FUNC5(name, basety, NULL, optional ? DECL_PARAM_TYPEONLY : DECL_PARAM);
    // C11 6.7.6.3p7: Array of T is adjusted to pointer to T
    // in a function parameter list.
    if (ty->kind == KIND_ARRAY)
        return FUNC2(ty->ptr);
    // C11 6.7.6.3p8: Function is adjusted to pointer to function
    // in a function parameter list.
    if (ty->kind == KIND_FUNC)
        return FUNC2(ty);
    return ty;
}