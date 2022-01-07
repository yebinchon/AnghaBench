
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Name; } ;
typedef TYPE_1__ CAPS ;


 int Free (TYPE_1__*) ;

void FreeCaps(CAPS *c)
{

 if (c == ((void*)0))
 {
  return;
 }

 Free(c->Name);
 Free(c);
}
