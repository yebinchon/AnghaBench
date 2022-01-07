
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int t ;
struct TYPE_9__ {int L3SwList; } ;
struct TYPE_8__ {int ref; int Name; } ;
typedef TYPE_1__ L3SW ;
typedef TYPE_2__ CEDAR ;


 int AddRef (int ) ;
 int LockList (int ) ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int StrCpy (int ,int,char*) ;
 int UnlockList (int ) ;
 int Zero (TYPE_1__*,int) ;

L3SW *L3GetSw(CEDAR *c, char *name)
{
 L3SW t, *s;

 if (c == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&t, sizeof(t));
 StrCpy(t.Name, sizeof(t.Name), name);

 LockList(c->L3SwList);
 {
  s = Search(c->L3SwList, &t);
 }
 UnlockList(c->L3SwList);

 if (s != ((void*)0))
 {
  AddRef(s->ref);
 }

 return s;
}
