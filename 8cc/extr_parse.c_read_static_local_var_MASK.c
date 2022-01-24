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
typedef  int /*<<< orphan*/  Type ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  Map ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * localenv ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  toplevels ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(Type *ty, char *name) {
    Node *var = FUNC1(ty, name);
    Vector *init = NULL;
    if (FUNC2('=')) {
        Map *orig = localenv;
        localenv = NULL;
        init = FUNC3(ty);
        localenv = orig;
    }
    FUNC4(toplevels, FUNC0(var, init));
}