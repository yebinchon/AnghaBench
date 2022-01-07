
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int L3SwList; } ;
typedef int L3SW ;
typedef TYPE_1__ CEDAR ;


 int Delete (int ,int *) ;
 int * L3GetSw (TYPE_1__*,char*) ;
 int L3SwStop (int *) ;
 int LockList (int ) ;
 int ReleaseL3Sw (int *) ;
 int UnlockList (int ) ;

bool L3DelSw(CEDAR *c, char *name)
{
 L3SW *s;
 bool ret = 0;

 if (c == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 LockList(c->L3SwList);
 {
  s = L3GetSw(c, name);

  if (s != ((void*)0))
  {

   L3SwStop(s);
   Delete(c->L3SwList, s);
   ReleaseL3Sw(s);
   ReleaseL3Sw(s);

   ret = 1;
  }
 }
 UnlockList(c->L3SwList);

 return ret;
}
