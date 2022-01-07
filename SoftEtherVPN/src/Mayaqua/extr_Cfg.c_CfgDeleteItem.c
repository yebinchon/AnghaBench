
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* Name; struct TYPE_7__* Buf; TYPE_1__* Parent; } ;
struct TYPE_6__ {int Items; } ;
typedef TYPE_2__ ITEM ;


 int Delete (int ,TYPE_2__*) ;
 int Free (TYPE_2__*) ;

void CfgDeleteItem(ITEM *t)
{

 if (t == ((void*)0))
 {
  return;
 }


 Delete(t->Parent->Items, t);


 Free(t->Buf);
 Free(t->Name);
 Free(t);
}
