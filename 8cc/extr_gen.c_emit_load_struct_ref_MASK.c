#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ offset; } ;
typedef  TYPE_2__ Type ;
struct TYPE_12__ {int kind; int /*<<< orphan*/  operand; TYPE_1__* ty; struct TYPE_12__* struc; int /*<<< orphan*/  glabel; scalar_t__ loff; } ;
struct TYPE_10__ {int /*<<< orphan*/  offset; } ;
typedef  TYPE_3__ Node ;

/* Variables and functions */
#define  AST_DEREF 131 
#define  AST_GVAR 130 
#define  AST_LVAR 129 
#define  AST_STRUCT_REF 128 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(Node *struc, Type *field, int off) {
    SAVE;
    switch (struc->kind) {
    case AST_LVAR:
        FUNC3(struc);
        FUNC2(field, "rbp", struc->loff + field->offset + off);
        break;
    case AST_GVAR:
        FUNC1(field, struc->glabel, field->offset + off);
        break;
    case AST_STRUCT_REF:
        FUNC6(struc->struc, field, struc->ty->offset + off);
        break;
    case AST_DEREF:
        FUNC0(struc->operand);
        FUNC2(field, "rax", field->offset + off);
        break;
    default:
        FUNC4("internal error: %s", FUNC5(struc));
    }
}