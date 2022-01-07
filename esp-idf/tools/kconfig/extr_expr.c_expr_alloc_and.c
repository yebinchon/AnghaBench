
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expr {int dummy; } ;


 int E_AND ;
 struct expr* expr_alloc_two (int ,struct expr*,struct expr*) ;

struct expr *expr_alloc_and(struct expr *e1, struct expr *e2)
{
 if (!e1)
  return e2;
 return e2 ? expr_alloc_two(E_AND, e1, e2) : e1;
}
