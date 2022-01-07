
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int L3SwList; } ;
struct TYPE_11__ {int ref; } ;
typedef TYPE_1__ L3SW ;
typedef TYPE_2__ CEDAR ;


 int AddRef (int ) ;
 int Insert (int ,TYPE_1__*) ;
 TYPE_1__* L3GetSw (TYPE_2__*,char*) ;
 int LockList (int ) ;
 TYPE_1__* NewL3Sw (TYPE_2__*,char*) ;
 int ReleaseL3Sw (TYPE_1__*) ;
 int UnlockList (int ) ;

L3SW *L3AddSw(CEDAR *c, char *name)
{
 L3SW *s = ((void*)0);

 if (c == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 LockList(c->L3SwList);
 {
  s = L3GetSw(c, name);

  if (s == ((void*)0))
  {
   s = NewL3Sw(c, name);

   Insert(c->L3SwList, s);

   AddRef(s->ref);
  }
  else
  {
   ReleaseL3Sw(s);
   s = ((void*)0);
  }
 }
 UnlockList(c->L3SwList);

 return s;
}
