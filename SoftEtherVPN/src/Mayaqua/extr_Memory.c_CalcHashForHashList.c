
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int (* GetHashProc ) (void*) ;int Size; } ;
typedef TYPE_1__ HASH_LIST ;


 int stub1 (void*) ;

UINT CalcHashForHashList(HASH_LIST *h, void *p)
{
 UINT r;

 if (h == ((void*)0) || p == ((void*)0))
 {
  return 0;
 }

 r = h->GetHashProc(p);

 return (r % h->Size);
}
