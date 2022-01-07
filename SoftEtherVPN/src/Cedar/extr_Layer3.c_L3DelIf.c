
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Active; int lock; int IfList; } ;
typedef TYPE_1__ L3SW ;
typedef int L3IF ;


 int Delete (int ,int *) ;
 int Free (int *) ;
 int * L3SearchIf (TYPE_1__*,char*) ;
 int Lock (int ) ;
 int Unlock (int ) ;

bool L3DelIf(L3SW *s, char *hubname)
{
 L3IF *f;
 bool ret = 0;

 if (s == ((void*)0) || hubname == ((void*)0))
 {
  return 0;
 }

 Lock(s->lock);
 {
  if (s->Active == 0)
  {
   f = L3SearchIf(s, hubname);

   if (f != ((void*)0))
   {

    Delete(s->IfList, f);
    Free(f);

    ret = 1;
   }
  }
 }
 Unlock(s->lock);

 return ret;
}
