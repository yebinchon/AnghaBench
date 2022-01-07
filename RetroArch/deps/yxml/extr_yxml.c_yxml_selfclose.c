
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stacklen; char* elem; int state; scalar_t__ stack; } ;
typedef TYPE_1__ yxml_t ;
typedef int yxml_ret_t ;


 int YXMLS_misc3 ;
 int YXML_ELEMEND ;
 int yxml_popstack (TYPE_1__*) ;

__attribute__((used)) static yxml_ret_t yxml_selfclose(yxml_t *x, unsigned ch) {
 yxml_popstack(x);
 if(x->stacklen) {
  x->elem = (char *)x->stack+x->stacklen-1;
  while(*(x->elem-1))
   x->elem--;
  return YXML_ELEMEND;
 }
 x->elem = (char *)x->stack;
 x->state = YXMLS_misc3;
 return YXML_ELEMEND;
}
