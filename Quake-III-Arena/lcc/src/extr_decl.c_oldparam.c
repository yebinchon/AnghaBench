
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ name; } ;
typedef TYPE_1__* Symbol ;


 int error (char*,scalar_t__) ;

__attribute__((used)) static void oldparam(Symbol p, void *cl) {
 int i;
 Symbol *callee = cl;

 for (i = 0; callee[i]; i++)
  if (p->name == callee[i]->name) {
   callee[i] = p;
   return;
  }
 error("declared parameter `%s' is missing\n", p->name);
}
