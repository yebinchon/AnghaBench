
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Rc4Key; } ;
typedef TYPE_1__ CRYPT ;


 int Free (TYPE_1__*) ;

void FreeCrypt(CRYPT *c)
{

 if (c == ((void*)0))
 {
  return;
 }


 Free(c->Rc4Key);
 Free(c);
}
