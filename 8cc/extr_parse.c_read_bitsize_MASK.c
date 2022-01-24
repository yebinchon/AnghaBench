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
struct TYPE_5__ {scalar_t__ kind; int size; } ;
typedef  TYPE_1__ Type ;
typedef  int /*<<< orphan*/  Token ;

/* Variables and functions */
 scalar_t__ KIND_BOOL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(char *name, Type *ty) {
    if (!FUNC2(ty))
        FUNC0("non-integer type cannot be a bitfield: %s", FUNC5(ty));
    Token *tok = FUNC3();
    int r = FUNC4();
    int maxsize = ty->kind == KIND_BOOL ? 1 : ty->size * 8;
    if (r < 0 || maxsize < r)
        FUNC1(tok, "invalid bitfield size for %s: %d", FUNC5(ty), r);
    if (r == 0 && name != NULL)
        FUNC1(tok, "zero-width bitfield needs to be unnamed: %s", name);
    return r;
}