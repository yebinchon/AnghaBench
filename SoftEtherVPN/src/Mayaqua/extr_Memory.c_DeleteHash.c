
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {int * AllList; int ** Entries; int NumItems; } ;
typedef TYPE_1__ HASH_LIST ;


 size_t CalcHashForHashList (TYPE_1__*,void*) ;
 scalar_t__ Delete (int *,void*) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;

bool DeleteHash(HASH_LIST *h, void *p)
{
 UINT r;
 bool ret = 0;

 if (h == ((void*)0) || p == ((void*)0))
 {
  return 0;
 }

 r = CalcHashForHashList(h, p);

 if (h->Entries[r] != ((void*)0))
 {
  if (Delete(h->Entries[r], p))
  {
   ret = 1;
   h->NumItems--;
  }

  if (LIST_NUM(h->Entries[r]) == 0)
  {
   ReleaseList(h->Entries[r]);
   h->Entries[r] = ((void*)0);
  }
 }

 if (ret)
 {
  if (h->AllList != ((void*)0))
  {
   Delete(h->AllList, p);
  }
 }

 return ret;
}
