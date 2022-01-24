#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct TYPE_10__* base; } ;
typedef  TYPE_2__ Type ;
struct TYPE_9__ {scalar_t__ arg; scalar_t__ len; scalar_t__ alloc; } ;
struct TYPE_11__ {scalar_t__ kind; TYPE_1__ new_expr; } ;
typedef  TYPE_3__ Expr ;

/* Variables and functions */
 scalar_t__ EXPR_NEW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_2__* FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 char* FUNC5 (TYPE_2__*,char*) ; 

void FUNC6(Expr *expr) {
    FUNC0(expr->kind == EXPR_NEW);
    Type *type = FUNC3(expr);
    FUNC0(FUNC4(type));
    const char *type_cdecl = FUNC5(type, "");
    const char *base_cdecl = FUNC5(type->base, "");
    if (expr->new_expr.alloc) {
        if (expr->new_expr.len) {
            if (!expr->new_expr.arg) {
                FUNC2("((%s)generic_alloc((Allocator *)(", type_cdecl);
                FUNC1(expr->new_expr.alloc);
                FUNC2("), ");
                FUNC1(expr->new_expr.len);
                FUNC2("* sizeof(%s), alignof(%s)))", base_cdecl, base_cdecl);
            } else {
                FUNC2("((%s)generic_alloc_copy((Allocator *)(", type_cdecl);
                FUNC1(expr->new_expr.alloc);
                FUNC2("), ");
                FUNC1(expr->new_expr.len);
                FUNC2(" * sizeof(%s), alignof(%s), &(", base_cdecl, base_cdecl);
                FUNC1(expr->new_expr.arg);
                FUNC2(")))");
            }
        } else {
            if (!expr->new_expr.arg) {
                FUNC2("((%s)generic_alloc((Allocator *)(", type_cdecl);
                FUNC1(expr->new_expr.alloc);
                FUNC2("), ");
                FUNC2("sizeof(%s), alignof(%s)))", base_cdecl, base_cdecl);
            } else {
                FUNC2("((%s)generic_alloc_copy((Allocator *)(", type_cdecl);
                FUNC1(expr->new_expr.alloc);
                FUNC2("), ");
                FUNC2("sizeof(%s), alignof(%s), &(", base_cdecl, base_cdecl, base_cdecl);
                FUNC1(expr->new_expr.arg);
                FUNC2(")))");
            }
        }
    } else {
        if (expr->new_expr.len) {
            if (!expr->new_expr.arg) {
                FUNC2("((%s)tls_alloc(", type_cdecl);
                FUNC1(expr->new_expr.len);
                FUNC2(" * sizeof(%s), alignof(%s)))", base_cdecl, base_cdecl);
            } else {
                FUNC2("((%s)alloc_copy(", type_cdecl);
                FUNC1(expr->new_expr.len);
                FUNC2(" * sizeof(%s), alignof(%s), &(", base_cdecl, base_cdecl);
                FUNC1(expr->new_expr.arg);
                FUNC2(")))");
            }
        } else {
            if (!expr->new_expr.arg) {
                FUNC2("((%s)tls_alloc(sizeof(%s), alignof(%s)))", type_cdecl, base_cdecl, base_cdecl);
            } else {
                FUNC2("((%s)alloc_copy(sizeof(%s), alignof(%s), &(", type_cdecl, base_cdecl, base_cdecl);
                FUNC1(expr->new_expr.arg);
                FUNC2(")))");
            }
        }
    }
}