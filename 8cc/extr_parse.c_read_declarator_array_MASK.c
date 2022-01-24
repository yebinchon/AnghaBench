#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ kind; } ;
typedef  TYPE_1__ Type ;
typedef  int /*<<< orphan*/  Token ;

/* Variables and functions */
 scalar_t__ KIND_FUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC6 () ; 

__attribute__((used)) static Type *FUNC7(Type *basety) {
    int len;
    if (FUNC3(']')) {
        len = -1;
    } else {
        len = FUNC6();
        FUNC1(']');
    }
    Token *tok = FUNC4();
    Type *t = FUNC5(basety, NULL);
    if (t->kind == KIND_FUNC)
        FUNC0(tok, "array of functions");
    return FUNC2(t, len);
}