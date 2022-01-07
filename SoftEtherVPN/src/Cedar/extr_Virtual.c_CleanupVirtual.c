
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int Counter; int * Session; } ;
typedef TYPE_1__ VH ;


 int DeleteCounter (int ) ;
 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int ReleaseSession (int *) ;

void CleanupVirtual(VH *v)
{

 if (v == ((void*)0))
 {
  return;
 }

 if (v->Session != ((void*)0))
 {
  ReleaseSession(v->Session);
 }

 DeleteCounter(v->Counter);
 DeleteLock(v->lock);

 Free(v);
}
