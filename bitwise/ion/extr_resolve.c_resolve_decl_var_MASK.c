#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
struct TYPE_5__ {int /*<<< orphan*/  expr; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {scalar_t__ kind; TYPE_1__ var; int /*<<< orphan*/  pos; } ;
typedef  TYPE_2__ Decl ;

/* Variables and functions */
 scalar_t__ DECL_VAR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

Type *FUNC3(Decl *decl) {
    FUNC0(decl->kind == DECL_VAR);
    return FUNC2(decl->pos, decl->var.type, decl->var.expr, FUNC1(decl), false);
}