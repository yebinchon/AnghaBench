
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {int * L3SwList; } ;
struct TYPE_5__ {int Name; } ;
typedef int LIST ;
typedef TYPE_1__ L3SW ;
typedef TYPE_2__ CEDAR ;


 int CopyStr (int ) ;
 int Free (char*) ;
 int Insert (int *,int ) ;
 int L3DelSw (TYPE_2__*,char*) ;
 void* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 int UnlockList (int *) ;

void L3FreeAllSw(CEDAR *c)
{
 LIST *o;
 UINT i;

 if (c == ((void*)0))
 {
  return;
 }

 o = NewListFast(((void*)0));

 LockList(c->L3SwList);
 {
  for (i = 0;i < LIST_NUM(c->L3SwList);i++)
  {
   L3SW *s = LIST_DATA(c->L3SwList, i);
   Insert(o, CopyStr(s->Name));
  }

  for (i = 0;i < LIST_NUM(o);i++)
  {
   char *name = LIST_DATA(o, i);

   L3DelSw(c, name);

   Free(name);
  }

  ReleaseList(o);
 }
 UnlockList(c->L3SwList);
}
