
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {int ** Entries; } ;
typedef int LIST ;
typedef TYPE_1__ HASH_LIST ;


 size_t CalcHashForHashList (TYPE_1__*,void*) ;
 int Search (int *,void*) ;

void *SearchHash(HASH_LIST *h, void *t)
{
 UINT r;
 void *ret = ((void*)0);

 if (h == ((void*)0) || t == ((void*)0))
 {
  return ((void*)0);
 }

 r = CalcHashForHashList(h, t);

 if (h->Entries[r] != ((void*)0))
 {
  LIST *o = h->Entries[r];
  void *r = Search(o, t);

  if (r != ((void*)0))
  {
   ret = r;
  }
 }

 return ret;
}
