
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Active; void* TableList; void* IfList; int * Cedar; int ref; int lock; int Name; } ;
typedef TYPE_1__ L3SW ;
typedef int CEDAR ;


 int CmpL3If ;
 int CmpL3Table ;
 void* NewList (int ) ;
 int NewLock () ;
 int NewRef () ;
 int StrCpy (int ,int,char*) ;
 TYPE_1__* ZeroMalloc (int) ;

L3SW *NewL3Sw(CEDAR *c, char *name)
{
 L3SW *o;

 if (c == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 o = ZeroMalloc(sizeof(L3SW));

 StrCpy(o->Name, sizeof(o->Name), name);

 o->lock = NewLock();
 o->ref = NewRef();
 o->Cedar = c;
 o->Active = 0;

 o->IfList = NewList(CmpL3If);
 o->TableList = NewList(CmpL3Table);

 return o;
}
