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
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_4__ {int /*<<< orphan*/  sval; } ;
typedef  TYPE_1__ Token ;
typedef  int /*<<< orphan*/  Map ;
typedef  int /*<<< orphan*/  Macro ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  macros ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(Token *name) {
    Map *param = FUNC2();
    bool is_varg = FUNC6(name, param);
    Vector *body = FUNC5(param);
    FUNC0(body);
    Macro *macro = FUNC1(body, FUNC3(param), is_varg);
    FUNC4(macros, name->sval, macro);
}