
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {struct TYPE_4__* Buffer; struct TYPE_4__* FileName; } ;
typedef TYPE_1__ HC ;


 int FileClose (int *) ;
 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;
 int * hamcore ;
 int * hamcore_io ;

void FreeHamcore()
{
 UINT i;
 for (i = 0;i < LIST_NUM(hamcore);i++)
 {
  HC *c = LIST_DATA(hamcore, i);
  Free(c->FileName);
  if (c->Buffer != ((void*)0))
  {
   Free(c->Buffer);
  }
  Free(c);
 }
 ReleaseList(hamcore);

 FileClose(hamcore_io);
 hamcore_io = ((void*)0);
 hamcore = ((void*)0);
}
