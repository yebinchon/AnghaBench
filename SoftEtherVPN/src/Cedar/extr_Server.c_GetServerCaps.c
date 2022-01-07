
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int CapsCacheLock; int * CapsListCache; } ;
typedef TYPE_1__ SERVER ;
typedef int CAPSLIST ;


 int Copy (int *,int *,int) ;
 int GetServerCapsMain (TYPE_1__*,int *) ;
 int Lock (int ) ;
 int Unlock (int ) ;
 int * ZeroMalloc (int) ;

void GetServerCaps(SERVER *s, CAPSLIST *t)
{

 if (s == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 Lock(s->CapsCacheLock);
 {

  if (s->CapsListCache == ((void*)0))
  {
   s->CapsListCache = ZeroMalloc(sizeof(CAPSLIST));
   GetServerCapsMain(s, s->CapsListCache);
  }

  Copy(t, s->CapsListCache, sizeof(CAPSLIST));
 }
 Unlock(s->CapsCacheLock);
}
