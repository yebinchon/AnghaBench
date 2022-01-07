
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mod; } ;
struct TYPE_5__ {scalar_t__ kind; TYPE_1__ int_lit; } ;
typedef TYPE_2__ Expr ;


 scalar_t__ EXPR_INT ;
 scalar_t__ MOD_CHAR ;

__attribute__((used)) static bool is_char_lit(Expr *expr) {
    return expr->kind == EXPR_INT && expr->int_lit.mod == MOD_CHAR;
}
