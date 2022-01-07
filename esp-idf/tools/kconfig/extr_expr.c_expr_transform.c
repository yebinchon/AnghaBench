
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* sym; struct expr* expr; } ;
struct TYPE_7__ {struct expr* expr; TYPE_3__* sym; } ;
struct expr {int type; TYPE_2__ left; TYPE_1__ right; } ;
struct TYPE_9__ {char* name; int type; } ;
 int S_BOOLEAN ;
 void* expr_alloc_one (int const,struct expr*) ;
 void* expr_alloc_symbol (TYPE_3__*) ;
 int free (struct expr*) ;
 int printf (char*,char*) ;
 TYPE_3__ symbol_mod ;
 TYPE_3__ symbol_no ;
 TYPE_3__ symbol_yes ;

struct expr *expr_transform(struct expr *e)
{
 struct expr *tmp;

 if (!e)
  return ((void*)0);
 switch (e->type) {
 case 137:
 case 136:
 case 135:
 case 134:
 case 132:
 case 128:
 case 129:
 case 133:
  break;
 default:
  e->left.expr = expr_transform(e->left.expr);
  e->right.expr = expr_transform(e->right.expr);
 }

 switch (e->type) {
 case 137:
  if (e->left.sym->type != S_BOOLEAN)
   break;
  if (e->right.sym == &symbol_no) {
   e->type = 131;
   e->left.expr = expr_alloc_symbol(e->left.sym);
   e->right.sym = ((void*)0);
   break;
  }
  if (e->right.sym == &symbol_mod) {
   printf("boolean symbol %s tested for 'm'? test forced to 'n'\n", e->left.sym->name);
   e->type = 129;
   e->left.sym = &symbol_no;
   e->right.sym = ((void*)0);
   break;
  }
  if (e->right.sym == &symbol_yes) {
   e->type = 129;
   e->right.sym = ((void*)0);
   break;
  }
  break;
 case 128:
  if (e->left.sym->type != S_BOOLEAN)
   break;
  if (e->right.sym == &symbol_no) {
   e->type = 129;
   e->right.sym = ((void*)0);
   break;
  }
  if (e->right.sym == &symbol_mod) {
   printf("boolean symbol %s tested for 'm'? test forced to 'y'\n", e->left.sym->name);
   e->type = 129;
   e->left.sym = &symbol_yes;
   e->right.sym = ((void*)0);
   break;
  }
  if (e->right.sym == &symbol_yes) {
   e->type = 131;
   e->left.expr = expr_alloc_symbol(e->left.sym);
   e->right.sym = ((void*)0);
   break;
  }
  break;
 case 131:
  switch (e->left.expr->type) {
  case 131:

   tmp = e->left.expr->left.expr;
   free(e->left.expr);
   free(e);
   e = tmp;
   e = expr_transform(e);
   break;
  case 137:
  case 128:

   tmp = e->left.expr;
   free(e);
   e = tmp;
   e->type = e->type == 137 ? 128 : 137;
   break;
  case 134:
  case 136:

   tmp = e->left.expr;
   free(e);
   e = tmp;
   e->type = e->type == 134 ? 135 : 132;
   break;
  case 132:
  case 135:

   tmp = e->left.expr;
   free(e);
   e = tmp;
   e->type = e->type == 132 ? 136 : 134;
   break;
  case 130:

   tmp = e->left.expr;
   e->type = 138;
   e->right.expr = expr_alloc_one(131, tmp->right.expr);
   tmp->type = 131;
   tmp->right.expr = ((void*)0);
   e = expr_transform(e);
   break;
  case 138:

   tmp = e->left.expr;
   e->type = 130;
   e->right.expr = expr_alloc_one(131, tmp->right.expr);
   tmp->type = 131;
   tmp->right.expr = ((void*)0);
   e = expr_transform(e);
   break;
  case 129:
   if (e->left.expr->left.sym == &symbol_yes) {

    tmp = e->left.expr;
    free(e);
    e = tmp;
    e->type = 129;
    e->left.sym = &symbol_no;
    break;
   }
   if (e->left.expr->left.sym == &symbol_mod) {

    tmp = e->left.expr;
    free(e);
    e = tmp;
    e->type = 129;
    e->left.sym = &symbol_mod;
    break;
   }
   if (e->left.expr->left.sym == &symbol_no) {

    tmp = e->left.expr;
    free(e);
    e = tmp;
    e->type = 129;
    e->left.sym = &symbol_yes;
    break;
   }
   break;
  default:
   ;
  }
  break;
 default:
  ;
 }
 return e;
}
