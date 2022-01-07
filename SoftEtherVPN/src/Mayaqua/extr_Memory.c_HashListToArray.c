
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {int NumItems; size_t Size; int ** Entries; int * AllList; } ;
typedef int LIST ;
typedef TYPE_1__ HASH_LIST ;


 void* LIST_DATA (int *,size_t) ;
 size_t LIST_NUM (int *) ;
 void** ToArray (int *) ;
 void** ZeroMalloc (int) ;

void **HashListToArray(HASH_LIST *h, UINT *num)
{
 void **ret = ((void*)0);
 UINT i;
 UINT n = 0;

 if (h == ((void*)0) || num == ((void*)0))
 {
  if (num != ((void*)0))
  {
   *num = 0;
  }
  return ((void*)0);
 }

 if (h->AllList != ((void*)0))
 {
  *num = LIST_NUM(h->AllList);

  return ToArray(h->AllList);
 }

 ret = ZeroMalloc(sizeof(void *) * h->NumItems);

 for (i = 0;i < h->Size;i++)
 {
  LIST *o = h->Entries[i];

  if (o != ((void*)0))
  {
   UINT j;

   for (j = 0;j < LIST_NUM(o);j++)
   {
    void *p = LIST_DATA(o, j);

    ret[n] = p;
    n++;
   }
  }
 }

 *num = n;

 return ret;
}
