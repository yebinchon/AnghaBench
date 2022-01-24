#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  is_undef; int /*<<< orphan*/  expr; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {scalar_t__ kind; int /*<<< orphan*/  pos; TYPE_1__ init; } ;
typedef  TYPE_2__ Stmt ;

/* Variables and functions */
 scalar_t__ STMT_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(Stmt *stmt) {
    FUNC0(stmt->kind == STMT_INIT);
    Type *type = FUNC2(stmt->pos, stmt->init.type, stmt->init.expr, false, stmt->init.is_undef);
    if (!FUNC3(stmt->init.name, type)) {
        FUNC1(stmt->pos, "Shadowed definition of local symbol");
    }
}