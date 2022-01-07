
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int line; unsigned char* stack; size_t stacksize; char* elem; char* pi; char* attr; int state; } ;
typedef TYPE_1__ yxml_t ;


 int YXMLS_init ;
 int memset (TYPE_1__*,int ,int) ;

void yxml_init(yxml_t *x, void *stack, size_t stacksize) {
 memset(x, 0, sizeof(*x));
 x->line = 1;
 x->stack = (unsigned char *)stack;
 x->stacksize = stacksize;
 *x->stack = 0;
 x->elem = x->pi = x->attr = (char *)x->stack;
 x->state = YXMLS_init;
}
