
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * last; int * first; } ;
typedef int Reinst ;


 size_t NSTACK ;
 TYPE_1__* andp ;
 TYPE_1__* andstack ;
 int cant (char*) ;

__attribute__((used)) static void
pushand(Reinst *f, Reinst *l)
{
 if(andp >= &andstack[NSTACK])
  cant("operand stack overflow");
 andp->first = f;
 andp->last = l;
 andp++;
}
