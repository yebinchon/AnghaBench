
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CapsCacheLock; int * CapsListCache; } ;
typedef TYPE_1__ SERVER ;


 int FreeCapsList (int *) ;
 int Lock (int ) ;
 int Unlock (int ) ;

void DestroyServerCapsCache(SERVER *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 Lock(s->CapsCacheLock);
 {
  if (s->CapsListCache != ((void*)0))
  {
   FreeCapsList(s->CapsListCache);
   s->CapsListCache = ((void*)0);
  }
 }
 Unlock(s->CapsCacheLock);
}
