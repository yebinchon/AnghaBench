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
typedef  int /*<<< orphan*/  Vector ;
typedef  int /*<<< orphan*/  Token ;
struct TYPE_3__ {int nargs; scalar_t__ is_varg; } ;
typedef  TYPE_1__ Macro ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Vector *FUNC4(Token *ident, Macro *macro) {
    Vector *r = FUNC0();
    bool end = false;
    while (!end) {
        bool in_ellipsis = (macro->is_varg && FUNC2(r) + 1 == macro->nargs);
        FUNC3(r, FUNC1(ident, &end, in_ellipsis));
    }
    if (macro->is_varg && FUNC2(r) == macro->nargs - 1)
        FUNC3(r, FUNC0());
    return r;
}