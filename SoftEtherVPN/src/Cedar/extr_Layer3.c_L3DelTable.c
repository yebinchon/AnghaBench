
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Active; int lock; int TableList; } ;
typedef int L3TABLE ;
typedef TYPE_1__ L3SW ;


 int Delete (int ,int *) ;
 int Free (int *) ;
 int Lock (int ) ;
 int * Search (int ,int *) ;
 int Unlock (int ) ;

bool L3DelTable(L3SW *s, L3TABLE *tbl)
{
 bool ret = 0;

 if (s == ((void*)0) || tbl == ((void*)0))
 {
  return 0;
 }

 Lock(s->lock);
 {
  if (s->Active == 0)
  {
   L3TABLE *t = Search(s->TableList, tbl);

   if (t != ((void*)0))
   {
    Delete(s->TableList, t);
    Free(t);

    ret = 1;
   }
  }
 }
 Unlock(s->lock);

 return ret;
}
