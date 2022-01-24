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
struct TYPE_12__ {scalar_t__ offset; } ;
typedef  TYPE_2__ Type ;
struct TYPE_13__ {int kind; int /*<<< orphan*/  operand; TYPE_1__* ty; struct TYPE_13__* struc; int /*<<< orphan*/  glabel; scalar_t__ loff; } ;
struct TYPE_11__ {int /*<<< orphan*/  offset; } ;
typedef  TYPE_3__ Node ;

/* Variables and functions */
#define  AST_DEREF 131 
#define  AST_GVAR 130 
#define  AST_LVAR 129 
#define  AST_STRUCT_REF 128 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(Node *struc, Type *field, int off) {
    SAVE;
    switch (struc->kind) {
    case AST_LVAR:
        FUNC4(struc);
        FUNC3(field, struc->loff + field->offset + off);
        break;
    case AST_GVAR:
        FUNC2(struc->glabel, field, field->offset + off);
        break;
    case AST_STRUCT_REF:
        FUNC8(struc->struc, field, off + struc->ty->offset);
        break;
    case AST_DEREF:
        FUNC7("rax");
        FUNC1(struc->operand);
        FUNC0(field, field->offset + off);
        break;
    default:
        FUNC5("internal error: %s", FUNC6(struc));
    }
}