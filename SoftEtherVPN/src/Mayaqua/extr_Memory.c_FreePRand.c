
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Rc4; } ;
typedef TYPE_1__ PRAND ;


 int Free (TYPE_1__*) ;
 int FreeCrypt (int ) ;

void FreePRand(PRAND *r)
{
 if (r == ((void*)0))
 {
  return;
 }

 FreeCrypt(r->Rc4);

 Free(r);
}
