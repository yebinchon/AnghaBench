
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * sym; struct expr* expr; } ;
struct TYPE_3__ {struct expr* expr; } ;
struct expr {int type; TYPE_2__ left; TYPE_1__ right; } ;
typedef enum expr_type { ____Placeholder_expr_type } expr_type ;




 scalar_t__ E_SYMBOL ;
 struct expr* e1 ;
 struct expr* e2 ;
 struct expr* expr_alloc_symbol (int *) ;
 int expr_eq (struct expr*,struct expr*) ;
 int expr_free (struct expr*) ;
 int symbol_no ;
 int symbol_yes ;
 int trans_count ;

__attribute__((used)) static void __expr_eliminate_eq(enum expr_type type, struct expr **ep1, struct expr **ep2)
{
 if (e1->type == type) {
  __expr_eliminate_eq(type, &e1->left.expr, &e2);
  __expr_eliminate_eq(type, &e1->right.expr, &e2);
  return;
 }
 if (e2->type == type) {
  __expr_eliminate_eq(type, &e1, &e2->left.expr);
  __expr_eliminate_eq(type, &e1, &e2->right.expr);
  return;
 }
 if (e1->type == E_SYMBOL && e2->type == E_SYMBOL &&
     e1->left.sym == e2->left.sym &&
     (e1->left.sym == &symbol_yes || e1->left.sym == &symbol_no))
  return;
 if (!expr_eq(e1, e2))
  return;
 trans_count++;
 expr_free(e1); expr_free(e2);
 switch (type) {
 case 128:
  e1 = expr_alloc_symbol(&symbol_no);
  e2 = expr_alloc_symbol(&symbol_no);
  break;
 case 129:
  e1 = expr_alloc_symbol(&symbol_yes);
  e2 = expr_alloc_symbol(&symbol_yes);
  break;
 default:
  ;
 }
}
