
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {int NumItems; int * AllList; int ** Entries; int CompareProc; } ;
typedef TYPE_1__ HASH_LIST ;


 int Add (int *,void*) ;
 size_t CalcHashForHashList (TYPE_1__*,void*) ;
 int Insert (int *,void*) ;
 int * NewListFast (int ) ;

void AddHash(HASH_LIST *h, void *p)
{
 UINT r;

 if (h == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 r = CalcHashForHashList(h, p);

 if (h->Entries[r] == ((void*)0))
 {
  h->Entries[r] = NewListFast(h->CompareProc);
 }

 Insert(h->Entries[r], p);

 if (h->AllList != ((void*)0))
 {
  Add(h->AllList, p);
 }

 h->NumItems++;
}
