
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Ref; } ;
typedef TYPE_1__ HASH_LIST ;


 int CleanupHashList (TYPE_1__*) ;
 scalar_t__ Release (int ) ;

void ReleaseHashList(HASH_LIST *h)
{

 if (h == ((void*)0))
 {
  return;
 }

 if (Release(h->Ref) == 0)
 {
  CleanupHashList(h);
 }
}
