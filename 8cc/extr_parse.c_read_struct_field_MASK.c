#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
struct TYPE_12__ {scalar_t__ kind; int /*<<< orphan*/  sval; } ;
typedef  TYPE_2__ Token ;
struct TYPE_13__ {TYPE_1__* ty; } ;
struct TYPE_11__ {scalar_t__ kind; int /*<<< orphan*/  fields; } ;
typedef  TYPE_3__ Node ;

/* Variables and functions */
 scalar_t__ KIND_STRUCT ; 
 scalar_t__ TIDENT ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static Node *FUNC6(Node *struc) {
    if (struc->ty->kind != KIND_STRUCT)
        FUNC2("struct expected, but got %s", FUNC4(struc));
    Token *name = FUNC3();
    if (name->kind != TIDENT)
        FUNC2("field name expected, but got %s", FUNC5(name));
    Type *field = FUNC1(struc->ty->fields, name->sval);
    if (!field)
        FUNC2("struct has no such field: %s", FUNC5(name));
    return FUNC0(field, struc, name->sval);
}